/***************************************************************************
 *
 *            (C) Copyright 2010 The Board of Trustees of the
 *                        University of Illinois
 *                         All Rights Reserved
 *
 ***************************************************************************/

#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <parboil_hstreams.h>

#include "UDTypes.h"

#define max(x,y) ((x<y)?y:x)
#define min(x,y) ((x>y)?y:x)

#define PI 3.14159265359

float kernel_value_CPU(float v){

  float rValue = 0;

  const float z = v*v;

  // polynomials taken from http://ccrma.stanford.edu/CCRMA/Courses/422/projects/kbd/kbdwindow.cpp
  float num = (z* (z* (z* (z* (z* (z* (z* (z* (z* (z* (z* (z* (z*
  (z* 0.210580722890567e-22f  + 0.380715242345326e-19f ) +
   0.479440257548300e-16f) + 0.435125971262668e-13f ) +
   0.300931127112960e-10f) + 0.160224679395361e-7f  ) +
   0.654858370096785e-5f)  + 0.202591084143397e-2f  ) +
   0.463076284721000e0f)   + 0.754337328948189e2f   ) +
   0.830792541809429e4f)   + 0.571661130563785e6f   ) +
   0.216415572361227e8f)   + 0.356644482244025e9f   ) +
   0.144048298227235e10f);

  float den = (z*(z*(z-0.307646912682801e4f)+0.347626332405882e7f)-0.144048298227235e10f);

  rValue = -num/den;

  return rValue;
}

void calculateLUT(float beta, float width, float** LUT, unsigned int* sizeLUT){
  float v;
  float cutoff2 = (width*width)/4.0;

  unsigned int size;

  if(width > 0){
    // compute size of LUT based on kernel width
    size = (unsigned int)(10000*width);

    // allocate memory
    (*LUT) = (float*) malloc (size*sizeof(float));

    unsigned int k;

#pragma omp parallel for private(v)
    for(k=0; k<size; ++k){
      // compute value to evaluate kernel at
      // v in the range 0:(_width/2)^2
      v = (((float)k)/((float)size))*cutoff2;

      // compute kernel value and store
      (*LUT)[k] = kernel_value_CPU(beta*sqrt(1.0-(v/cutoff2)));
    }
    (*sizeLUT) = size;
  }
}

float kernel_value_LUT(float v, float* LUT, int sizeLUT, float _1overCutoff2)
{
  unsigned int k0;
  float v0;

  v *= (float)sizeLUT;
  k0=(unsigned int)(v*_1overCutoff2);
  v0 = ((float)k0)/_1overCutoff2;
  return  LUT[k0] + ((v-v0)*(LUT[k0+1]-LUT[k0])/_1overCutoff2);
}

int gridding_Gold(unsigned int n, parameters params, ReconstructionSample* sample, float* LUT, unsigned int sizeLUT, cmplx* gridData, float* sampleDensity, int logical_streams, int task_blocks){


  unsigned int size_x = params.gridSize[0];
  unsigned int size_y = params.gridSize[1];
  unsigned int size_z = params.gridSize[2];
  int gridNumElems = params.gridSize[0]*params.gridSize[1]*params.gridSize[2];
  float cutoff = ((float)(params.kernelWidth))/2.0; // cutoff radius
  float beta = PI * sqrt(4*params.kernelWidth*params.kernelWidth/(params.oversample*params.oversample) * (params.oversample-.5)*(params.oversample-.5)-.8);


  parboil_hstreams_init (logical_streams, "kernel.so");
  CHECK_HSTR_RESULT(hStreams_app_create_buf(sample,n * sizeof(ReconstructionSample)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(sampleDensity,gridNumElems * sizeof(float)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(gridData,gridNumElems * sizeof (cmplx)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(LUT,sizeLUT*sizeof(float)));


  uint64_t args[13];
  task_blocks = n > task_blocks ? task_blocks : n;
  int sub_blocks = n / task_blocks;
  int remain_s = n % task_blocks;
  int start_index = 0;
  int end_index;
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(LUT, LUT, sizeLUT*sizeof(float),0, HSTR_SRC_TO_SINK, NULL));

  args[2] = (uint64_t) params.useLUT;
  args[3] = (uint64_t) sizeLUT;
  args[4] = (uint64_t) size_x;
  args[5] = (uint64_t) size_y;
  args[6] = (uint64_t) size_z;
  args[7] = (uint64_t) beta;
  args[8] = (uint64_t) cutoff;
  args[9] = (uint64_t) sample;
  args[10] = (uint64_t) sampleDensity;
  args[11] = (uint64_t) gridData;
  args[12] = (uint64_t) LUT;
  hStreams_ThreadSynchronize();
printf("Max block = %d\n", n);
  double tbegin = dtimeGet();
  for ( int i = 0; i < task_blocks; i++)
  {
  args[0] = (uint64_t)start_index;
  end_index = start_index + sub_blocks;
  if ( i < remain_s)
    end_index ++;
  args[1] = (uint64_t)end_index;
tbegin = dtimeGet ();
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&sample[start_index], &sample[start_index],(end_index - start_index ) * sizeof (ReconstructionSample) ,0, HSTR_SRC_TO_SINK, NULL));
  hStreams_ThreadSynchronize();
printf("Transfer = %lf\n", dtimeGet () - tbegin);
tbegin = dtimeGet ();
  CHECK_HSTR_RESULT(hStreams_EnqueueCompute(
                                i % logical_streams,
                                "gridding_kernel",
                                9,
                                4,
                                args,
                                NULL,NULL,0));
  hStreams_ThreadSynchronize();
printf("Exe = %lf\n", dtimeGet () - tbegin);
  start_index = end_index;
  }

  hStreams_ThreadSynchronize();
  printf("%d\t%d\t%lf\n", task_blocks, logical_streams, dtimeGet() - tbegin);

  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(gridData, gridData,gridNumElems * sizeof (cmplx) ,0, HSTR_SINK_TO_SRC, NULL));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(sampleDensity, sampleDensity,gridNumElems * sizeof (float) ,0, HSTR_SINK_TO_SRC, NULL));
  hStreams_ThreadSynchronize();
  hStreams_app_fini();
  return 0;
}
