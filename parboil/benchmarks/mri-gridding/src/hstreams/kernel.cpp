#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <omp.h>
#include <assert.h>
#include <intel-coi/sink/COIPipeline_sink.h>
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
float kernel_value_LUT(float v, float* LUT, int sizeLUT, float _1overCutoff2)
{
  unsigned int k0;
  float v0;

  v *= (float)sizeLUT;
  k0=(unsigned int)(v*_1overCutoff2);
  v0 = ((float)k0)/_1overCutoff2;
  return  LUT[k0] + ((v-v0)*(LUT[k0+1]-LUT[k0])/_1overCutoff2);
}
COINATIVELIBEXPORT void
gridding_kernel (uint64_t arg0,
	uint64_t arg1,
	uint64_t arg2,
	uint64_t arg3,
	uint64_t arg4,
	uint64_t arg5,
	uint64_t arg6,
	uint64_t arg7,
	uint64_t arg8,
	uint64_t arg9,
	uint64_t arg10,
	uint64_t arg11,
	uint64_t arg12
)
{

  int start_index = (int) arg0;
  int end_index = (int) arg1;
  int useLUT = (int)arg2;
  unsigned int sizeLUT = (unsigned int) arg3;
  unsigned int size_x = (unsigned int) arg4;
  unsigned int size_y = (unsigned int) arg5;
  unsigned int size_z = (unsigned int) arg6;
  float beta = (float) arg7;
  float cutoff = (float) arg8; // cutoff radius
  ReconstructionSample * sample = (ReconstructionSample *)arg9;
  float * sampleDensity = (float *) arg10;
  cmplx * gridData = (cmplx *) arg11;
  float * LUT = (float *) arg12;

  float cutoff2 = cutoff*cutoff;                    // square of cutoff radius
  float _1overCutoff2 = 1/cutoff2;                  // 1 over square of cutoff radius
  unsigned int NxL, NxH;
  unsigned int NyL, NyH;
  unsigned int NzL, NzH;
  float Dx2[100];
  float Dy2[100];
  float Dz2[100];
  float *dx2=NULL;
  float *dy2=NULL;
  float *dz2=NULL;

  float dy2dz2;
  float v;
  int nx;
  int ny;
  int nz;

  float w;
  unsigned int idx;
  unsigned int idx0;

  unsigned int idxZ;
  unsigned int idxY;
  int i;
  
#pragma omp parallel for private(NxL, NxH, NyL, NyH, NzL, NzH, dz2, nz, dx2,         \
				 nx, dy2, ny, idxZ, idxY, dy2dz2, idx0, v, idx, w)

  for (i=start_index; i < end_index; i++){
    ReconstructionSample pt = sample[i];

    float kx = pt.kX;
    float ky = pt.kY;
    float kz = pt.kZ;

    NxL = max((kx - cutoff), 0.0);
    NxH = min((kx + cutoff), size_x-1.0);

    NyL = max((ky - cutoff), 0.0);
    NyH = min((ky + cutoff), size_y-1.0);

    NzL = max((kz - cutoff), 0.0);
    NzH = min((kz + cutoff), size_z-1.0);

    if((pt.real != 0.0 || pt.imag != 0.0) && pt.sdc!=0.0)
    {
      for(dz2 = Dz2, nz=NzL; nz<=NzH; ++nz, ++dz2)
      {
        *dz2 = ((kz-nz)*(kz-nz));
      }
      for(dx2=Dx2,nx=NxL; nx<=NxH; ++nx,++dx2)
      {
        *dx2 = ((kx-nx)*(kx-nx));
      }
      for(dy2=Dy2, ny=NyL; ny<=NyH; ++ny,++dy2)
      {
        *dy2 = ((ky-ny)*(ky-ny));
      }

      idxZ = (NzL-1)*size_x*size_y;
      for(dz2=Dz2, nz=NzL; nz<=NzH; ++nz, ++dz2)
      {
        /* linear offset into 3-D matrix to get to zposition */
        idxZ += size_x*size_y;

        idxY = (NyL-1)*size_x;

        /* loop over x indexes, but only if curent distance is close enough (distance will increase by adding x&y distance) */
        if((*dz2)<cutoff2)
        {
          for(dy2=Dy2, ny=NyL; ny<=NyH; ++ny, ++dy2)
          {
            /* linear offset IN ADDITION to idxZ to get to Y position */
            idxY += size_x;

            dy2dz2=(*dz2)+(*dy2);

            idx0 = idxY + idxZ;

            /* loop over y indexes, but only if curent distance is close enough (distance will increase by adding y distance) */
            if(dy2dz2<cutoff2)
            {
              for(dx2=Dx2, nx=NxL; nx<=NxH; ++nx, ++dx2)
              {
                /* value to evaluate kernel at */
                v = dy2dz2+(*dx2);

                if(v<cutoff2)
                {
                  /* linear index of (x,y,z) point */
                  idx = nx + idx0;

                  /* kernel weighting value */
                  if (useLUT){
        		    w = kernel_value_LUT(v, LUT, sizeLUT, _1overCutoff2) * pt.sdc;
		          } else {
		            w = kernel_value_CPU(beta*sqrt(1.0-(v*_1overCutoff2))) * pt.sdc;
		          }

                  /* grid data */
#pragma omp critical (c1)
                  gridData[idx].real += (w*pt.real);
#pragma omp critical (c2)
                  gridData[idx].imag += (w*pt.imag);

                  /* estimate sample density */
#pragma omp critical (c3)
                  sampleDensity[idx] += 1.0;
                }
              }
            }
          }
        }
      }
    }
  }
}
