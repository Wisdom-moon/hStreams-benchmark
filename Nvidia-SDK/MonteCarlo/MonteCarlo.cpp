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
 * given set of European options using Monte Carlo approach.
 * See supplied whitepaper for more explanations.
 */



#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <string.h>
#include "MonteCarlo_common.h"

#include <dtime.h>

#include <hStreams_source.h>
#include <hStreams_app_api.h>
#include <common/COIMacros_common.h>

#ifdef WIN32
#define strcasecmp _strcmpi
#endif

static HSTR_OPTIONS hstreams_options;
#define ITERATION 3
#define SWITCH_CHAR '-'

////////////////////////////////////////////////////////////////////////////////
// Common host and device functions
////////////////////////////////////////////////////////////////////////////////
float randFloat(float low, float high){
    float t = (float)rand() / (float)RAND_MAX;
    return (1.0f - t) * low + t * high;
}


extern "C" void MonteCarloCPU(
    TOptionValue&    callValue,
    TOptionData optionData,
    float *h_Samples,
    int pathN
);

///////////////////////////////////////////////////////////////////////////////
// Main program
///////////////////////////////////////////////////////////////////////////////


int main(int argc, char **argv)
{

  uint32_t places= 1;
  uint32_t streams= 1;
  int stream = 0;
  int blocks = 1;

  int  size = 256;
  int  *subsize ;
  int  PATH_N = 1 << 2;
  unsigned int SEED = 0;
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
                places = (int)atol(argv[0]+2);
                break;
            default:
                break;
          }
      }
      argc -= 1;
      argv++;
    }
  subsize = (int *) malloc ( blocks * sizeof (int));
for (b = 0; b < blocks - 1; b++)
{
  subsize[b] = size / blocks;
}
  subsize[blocks - 1] = size - (blocks - 1) * (size / blocks);

  hStreams_GetCurrentOptions(&hstreams_options, sizeof(hstreams_options));
  hstreams_options.verbose = 0;
  hstreams_options.phys_domains_limit = 256;
  char *libNames[20] = {NULL, NULL};
  unsigned int libNameCnt = 0;
  libNames[libNameCnt++] = "kernel_cpu.so";
  hstreams_options.libNames = libNames;
  hstreams_options.libNameCnt = (uint16_t) libNameCnt;
  hStreams_SetOptions (&hstreams_options);

  int iret = hStreams_app_init (places, streams);
  if (iret != 0)
  {
    printf ("hstreams_app_init failed!\n");
    exit (-1);
  }

    //Input data array
  TOptionData *optionData = (TOptionData *) malloc (size * sizeof (TOptionData));
  TOptionValue *callValueCPU = (TOptionValue *) malloc ( size * sizeof (TOptionValue));
  TOptionValue *callValue = (TOptionValue *) malloc ( size * sizeof (TOptionValue));

    int i;

        srand(123);
        for(i = 0; i < size ; i++){
            optionData[i].S = randFloat(5.0f, 50.0f);
            optionData[i].X = randFloat(10.0f, 25.0f);
            optionData[i].T = randFloat(1.0f, 5.0f);
            optionData[i].R = 0.06f;
            optionData[i].V = 0.10f;
        }
  
  
  TOptionData **optionDataBlocks = (TOptionData **) malloc (blocks * sizeof (TOptionData *)); 
  TOptionValue **callValueCPUBlocks = (TOptionValue **) malloc ( blocks * sizeof (TOptionValue *)); 
  for (b = 0; b < blocks; b++)
  {
    optionDataBlocks[b] = &(optionData[b * subsize[0]]);
    callValueCPUBlocks[b] = &(callValueCPU[b * subsize[0]]);
    CHECK_HSTR_RESULT (hStreams_app_create_buf (optionDataBlocks[b], subsize[b] * sizeof (TOptionData)));
    CHECK_HSTR_RESULT (hStreams_app_create_buf (callValueCPUBlocks[b], subsize[b] * sizeof (TOptionValue)));
  }
  hStreams_ThreadSynchronize ();

    uint64_t arg[4];

    arg[1] = (uint64_t) PATH_N;

/*
  for ( b = 0; b < blocks; b++)
  {
    stream = b % places;
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (optionDataBlocks[b], optionDataBlocks[b], sizeof(TOptionData) * subsize[b], stream , HSTR_SRC_TO_SINK, NULL));
  }
  for ( b = 0; b < blocks; b++)
  {
    stream = b % places;
    arg[0] = (uint64_t) subsize[b];
    arg[2] = (uint64_t) optionDataBlocks[b];
    arg[3] = (uint64_t) callValueCPUBlocks[b];
    CHECK_HSTR_RESULT (hStreams_EnqueueCompute (stream, "kernel_cpu", 2, 2, arg, NULL, NULL, 0));
  }
  for ( b = 0; b < blocks; b++)
  {
    stream = b % places;
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (callValueCPUBlocks[b], callValueCPUBlocks[b], sizeof(TOptionValue) * subsize[b] , stream, HSTR_SINK_TO_SRC, NULL));
  }
  hStreams_ThreadSynchronize ();
*/

  tall= 0.0f;
  //for (i = 0; i < ITERATION; i++)
  {

    tbegin = dtimeGet ();

    for ( b = 0; b < blocks; b++)
    {
      stream = b % places;
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (optionDataBlocks[b], optionDataBlocks[b], sizeof(TOptionData) * subsize[b], stream , HSTR_SRC_TO_SINK, NULL));
    }

    for ( b = 0; b < blocks; b++)
    {
      stream = b % places;
    arg[0] = (uint64_t) subsize[b];
      arg[2] = (uint64_t) optionDataBlocks[b];
      arg[3] = (uint64_t) callValueCPUBlocks[b];
      CHECK_HSTR_RESULT (hStreams_EnqueueCompute (stream, "kernel_cpu", 2, 2, arg, NULL, NULL, 0));
    }

/*
    for ( b = 0; b < blocks; b++)
    {
      stream = b % places;
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (callValueCPUBlocks[b], callValueCPUBlocks[b], sizeof(TOptionValue) * subsize[b] , stream, HSTR_SINK_TO_SRC, NULL));
    }
*/

    hStreams_ThreadSynchronize ();
    tall += (dtimeGet() - tbegin);
  }

  printf("%d\t%d\t%lf\n", places, block, stall);
 
/*
double sumDelta, sumRef, delta, ref;
            sumDelta   = 0;
            sumRef     = 0;
            for(i = 0; i < size; i++){
                MonteCarloCPU(
                    callValue[i],
                    optionData[i],
                    NULL,
                    PATH_N
                );
	    }
            for(i = 0; i < size; i++){
                delta     = fabs(callValue[i].Expected - callValueCPU[i].Expected);
                ref       = callValue[i].Expected;
                sumDelta += delta;
                sumRef   += fabs(ref);
            }
        printf("L1 norm: %E\n", sumDelta / sumRef);

*/

  free (optionData);
  free (callValueCPU);
  free (callValue);
  free (optionDataBlocks);
  free (callValueCPUBlocks);
  free(subsize);

  hStreams_app_fini ();
}
