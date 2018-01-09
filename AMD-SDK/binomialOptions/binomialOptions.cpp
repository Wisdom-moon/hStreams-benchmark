/*
 * Copyright 1993-2010 NVIDIA Corporation.  All rights reserved.
 *
 * Please refer to the NVIDIA end user license agreement (EULA) associated
 * with this source code for terms and conditions that govern your use of
 * this software. Any use, reproduction, disclosure, or distribution of
 * this software and related documentation outside the terms of the EULA
 * is strictly prohibited.
 *
 */

/*
 * This sample evaluates fair call price for a
 * given set of European options under binomial model.
 * See supplied whitepaper for more explanations.
 */



#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <omp.h>
#include <dtime.h>

#include <hStreams_source.h>
#include <hStreams_app_api.h>
#include <common/COIMacros_common.h>

#include "binomialOptions_common.h"

static HSTR_OPTIONS hstreams_options;
#define ITERATION 1


////////////////////////////////////////////////////////////////////////////////
// Process single option on CPU
////////////////////////////////////////////////////////////////////////////////
extern "C" void binomialOptionsCPU(
    float& callResult,
    TOptionData optionData
);


////////////////////////////////////////////////////////////////////////////////
// Helper function, returning uniformly distributed
// random float in [low, high] range
////////////////////////////////////////////////////////////////////////////////
float randData(float low, float high){
    float t = (float)rand() / (float)RAND_MAX;
    return (1.0f - t) * low + t * high;
}



////////////////////////////////////////////////////////////////////////////////
// Main program
////////////////////////////////////////////////////////////////////////////////
int main(int argc, char **argv){

  uint32_t places_per_domain = 1;
  uint32_t streams_per_place = 1;
  int stream = 0;
  int MAXLOGSTR = places_per_domain;
  int blocks = 1;

  int size = 224;
  int * subsize ;
  int b;
  double tbegin = 0.0, tall;


    while (argc){
      if (*argv[0] == SWITCH_CHAR){
          switch (*(argv[0]+1)){
	    case 'n':
		size = (int)atol(argv[0]+2);
		break;
	    case 'b':
		blocks = (int)atol(argv[0]+2);
		break;
	    case 'p':
		places_per_domain = (int)atol(argv[0]+2);
		break;
	    default:
		break;
          }
      }
      argc -= 1;
      argv++;
    }
  subsize = (int *) malloc(sizeof (int) * blocks);
  for (b = 0; b < blocks - 1; b++)
     subsize[b] = size / blocks;
  subsize[blocks - 1] =  size - (size / blocks) * (blocks - 1);

  hStreams_GetCurrentOptions(&hstreams_options, sizeof(hstreams_options));
  hstreams_options.verbose = 0;
  hstreams_options.phys_domains_limit = 256;
  char *libNames[20] = {NULL, NULL};
  unsigned int libNameCnt = 0;
  libNames[libNameCnt++] = "kernel_cpu.so";
  hstreams_options.libNames = libNames;
  hstreams_options.libNameCnt = (uint16_t) libNameCnt;
  hStreams_SetOptions (&hstreams_options);

  int iret = hStreams_app_init (places_per_domain, streams_per_place);
  if (iret != 0)
  {
    printf ("hstreams_app_init failed!\n");
    exit (-1);
  }

    TOptionData *optionData;
    float	*callValueCPU;
    TOptionData *optionDataRef;
    float	*callValueCPURef;

    optionData = (TOptionData *) malloc (size * sizeof (TOptionData));
    callValueCPU = (float *) malloc (size * sizeof (float));
    optionDataRef = (TOptionData *) malloc (size * sizeof (TOptionData));
    callValueCPURef = (float *) malloc (size * sizeof (float));

    double
        sumDelta, sumRef, errorVal;

    int i;

        srand(123);
        for(i = 0; i < size; i++){
            optionData[i].S = randData(5.0f, 30.0f);
            optionData[i].X = randData(1.0f, 100.0f);
            optionData[i].T = randData(0.25f, 10.0f);
            optionData[i].R = 0.06f;
            optionData[i].V = 0.10f;
        }
  
  memcpy (optionDataRef, optionData, size * sizeof (TOptionData));
  //printf("optinoData[0]: S=%lf,X=%lf,T=%lf,R=%lf,V=%lf\n", optionData[0].S, optionData[0].X, optionData[0].T, optionData[0].R, optionData[0].V);
  //printf("optinoDaRe[0]: S=%lf,X=%lf,T=%lf,R=%lf,V=%lf\n", optionDataRef[0].S, optionDataRef[0].X, optionDataRef[0].T, optionDataRef[0].R, optionDataRef[0].V);

  TOptionData **optionDataBlocks = (TOptionData **) malloc (blocks * sizeof (TOptionData *));
  float **callValueCPUBlocks = (float **) malloc (blocks * sizeof (float *));
  for(b=0; b<blocks; b++){
  if ( b == 0){
  optionDataBlocks[b] = optionData;
  callValueCPUBlocks[b] = callValueCPU;
  }
  else 
{
  optionDataBlocks[b] = optionDataBlocks[b-1] + subsize[b - 1];
  callValueCPUBlocks[b] = callValueCPUBlocks[b-1] + subsize[b - 1];
}

  CHECK_HSTR_RESULT (hStreams_app_create_buf (optionDataBlocks[b], sizeof(TOptionData) * subsize[b] ));
  CHECK_HSTR_RESULT (hStreams_app_create_buf (callValueCPUBlocks[b], sizeof(float) * subsize[b]));
  }

  hStreams_ThreadSynchronize ();

  uint64_t arg[3];

/*
for (b = 0; b < blocks; b++)
{
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (optionDataBlocks[b], optionDataBlocks[b], sizeof(TOptionData) *subsize[b], b % places_per_domain, HSTR_SRC_TO_SINK, NULL));
}
for (b = 0; b < blocks; b++)
  {
    arg[0] = (uint64_t) subsize[b];
    arg[1] = (uint64_t) optionDataBlocks[b];
    arg[2] = (uint64_t) callValueCPUBlocks[b];

    CHECK_HSTR_RESULT (hStreams_EnqueueCompute (b % places_per_domain, "kernel_cpu", 1, 2, arg, NULL, NULL, 0));
  }
for (b = 0; b < blocks; b++)
{
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (callValueCPUBlocks[b], callValueCPUBlocks[b], sizeof(float) * subsize[b], b % places_per_domain, HSTR_SINK_TO_SRC, NULL));
}
  hStreams_ThreadSynchronize ();

*/
  tall = 0.0f;
  //for (i = 0; i < ITERATION; i++)
  {
    tbegin = dtimeGet ();
    for (b = 0; b < blocks; b++)
      {
        CHECK_HSTR_RESULT (hStreams_app_xfer_memory (optionDataBlocks[b], optionDataBlocks[b], sizeof(TOptionData) *subsize[b], b % places_per_domain, HSTR_SRC_TO_SINK, NULL));
      }
    for (b = 0; b < blocks; b++)
      {
        arg[0] = (uint64_t) subsize[b];
        arg[1] = (uint64_t) optionDataBlocks[b];
        arg[2] = (uint64_t) callValueCPUBlocks[b];

        CHECK_HSTR_RESULT (hStreams_EnqueueCompute (b % places_per_domain, "kernel_cpu", 1, 2, arg, NULL, NULL, 0));
      }
/*    for (b = 0; b < blocks; b++)
      {
        CHECK_HSTR_RESULT (hStreams_app_xfer_memory (callValueCPUBlocks[b], callValueCPUBlocks[b], sizeof(float) * subsize[b], b % places_per_domain, HSTR_SINK_TO_SRC, NULL));
      } */

    hStreams_ThreadSynchronize ();
    tall += (dtimeGet() - tbegin);
  }
  printf ("%d\t%d\t%lf\n",places_per_domain, blocks, tall);

  hStreams_app_fini ();

////////////run in cpu////////////////////////
/*        for(i = 0; i < size; i++)
            binomialOptionsCPU(callValueCPURef[i], optionDataRef[i]);

    sumDelta = 0;
    sumRef   = 0;
    for(i = 0; i < size; i++){
        sumDelta += fabs(callValueCPURef[i]- callValueCPU[i]);
        sumRef += fabs(callValueCPURef[i]);
	//printf("callValueCPURef[%d] = %E, callValueCPU[%d] = %E\n", i, callValueCPURef[i], i, callValueCPU[i]);
    }
    printf("sumDelta = %E, sumRef = %E\n", sumDelta, sumRef);
    if(sumRef >1E-5)
        printf("L1 norm: %E\n", sumDelta / sumRef);
    else
        printf("Avg. diff: %E\n", sumDelta / (double)size);

*/
  free (optionData);
  free (callValueCPU);
  free (optionDataRef);
  free (callValueCPURef);
  free (optionDataBlocks);
  free (callValueCPUBlocks);
  free (subsize);

}
