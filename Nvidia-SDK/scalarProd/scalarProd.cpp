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
 * This sample calculates scalar products of a 
 * given set of input vector pairs
 */



#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <dtime.h>

#include <hStreams_source.h>
#include <hStreams_app_api.h>
#include <common/COIMacros_common.h>


static HSTR_OPTIONS hstreams_options;
#define ITERATION 3
#define SWITCH_CHAR '-'


////////////////////////////////////////////////////////////////////////////////
// Helper function, returning uniformly distributed
// random float in [low, high] range
////////////////////////////////////////////////////////////////////////////////
float RandFloat(float low, float high){
    float t = (float)rand() / (float)RAND_MAX;
    return (1.0f - t) * low + t * high;
}

extern "C"
void scalarProdCPU(
    float *h_C,
    float *h_A,
    float *h_B,
    int vectorN,
    int elementN
);

///////////////////////////////////////////////////////////////////////////////
// Data configuration
///////////////////////////////////////////////////////////////////////////////




///////////////////////////////////////////////////////////////////////////////
// Main program
///////////////////////////////////////////////////////////////////////////////
int main(int argc, char **argv)
{
  uint32_t places= 1;
  uint32_t streams= 1;
  int stream = 0;
  int blocks = 1;
  double tbegin = 0.0, tall;

    float *h_A, *h_B, *h_C_CPU;
    int i;

    int VECTOR_N = 256;
    int * Sub_VECTOR_N ;
    int ELEMENT_N = 4096;
  int b;

    while (argc){
      if (*argv[0] == SWITCH_CHAR){
          switch (*(argv[0]+1)){
            case 'n':
                VECTOR_N = (int)atol(argv[0]+2);
                break;
            case 'e':
                ELEMENT_N= (int)atol(argv[0]+2);
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
  Sub_VECTOR_N = (int *) malloc (blocks * sizeof (int));
for (b = 0; b < blocks - 1; b++)
{
  Sub_VECTOR_N[b] = VECTOR_N / blocks;
}
    Sub_VECTOR_N[blocks - 1] = VECTOR_N - (blocks - 1) * (VECTOR_N  / blocks);

    int DATA_N = VECTOR_N * ELEMENT_N;
    int DATA_SZ = DATA_N * sizeof(float);
    int RESULT_SZ = VECTOR_N  * sizeof(float);

    int * Sub_DATA_N = (int *) malloc (blocks * sizeof (int));
    int * Sub_DATA_SZ = (int *) malloc (blocks * sizeof (int));
    int * Sub_RESULT_SZ = (int *) malloc (blocks * sizeof (int));
  for (b = 0; b < blocks; b++)
{
    Sub_DATA_N[b] = Sub_VECTOR_N[b] * ELEMENT_N;
    Sub_DATA_SZ[b] = Sub_DATA_N[b] * sizeof(float);
    Sub_RESULT_SZ[b] = Sub_VECTOR_N[b] * sizeof(float);
}


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

    h_A     = (float *)malloc(DATA_SZ);
    h_B     = (float *)malloc(DATA_SZ);
    h_C_CPU = (float *)malloc(RESULT_SZ);
    float * h_C_Ref = (float *)malloc(RESULT_SZ);

    srand(123);
    for(i = 0; i < DATA_N; i++){
        h_A[i] = RandFloat(0.0f, 1.0f);
        h_B[i] = RandFloat(0.0f, 1.0f);
    }

  float **h_ABlocks = (float **) malloc (blocks * sizeof (float *));
  float **h_BBlocks = (float **) malloc (blocks * sizeof (float *));
  float **h_C_CPUBlocks = (float **) malloc (blocks * sizeof (float *));


  for (b = 0; b < blocks; b++)
  {
    h_ABlocks[b]= &(h_A[b * Sub_DATA_N[0]]);
    h_BBlocks[b]= &(h_B[b * Sub_DATA_N[0]]);
    h_C_CPUBlocks[b]= &(h_C_CPU[b * Sub_VECTOR_N[0]]);
    CHECK_HSTR_RESULT (hStreams_app_create_buf (h_ABlocks[b], Sub_DATA_SZ[b]));
    CHECK_HSTR_RESULT (hStreams_app_create_buf (h_BBlocks[b], Sub_DATA_SZ[b]));
    CHECK_HSTR_RESULT (hStreams_app_create_buf (h_C_CPUBlocks[b], Sub_RESULT_SZ[b]));
  }
  hStreams_ThreadSynchronize ();

    uint64_t arg[5];

    arg[0] = (uint64_t) ELEMENT_N;

/*
  for (b = 0; b < blocks; b++)
  {
    stream = b % places;
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_ABlocks[b], h_ABlocks[b], Sub_DATA_SZ[b], stream , HSTR_SRC_TO_SINK, NULL));
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_BBlocks[b], h_BBlocks[b], Sub_DATA_SZ[b], stream , HSTR_SRC_TO_SINK, NULL));
  }
  for (b = 0; b < blocks; b++)
  {
    stream = b % places;
    arg[1] = (uint64_t) Sub_VECTOR_N[b];
    arg[2] = (uint64_t) h_BBlocks[b];
    arg[3] = (uint64_t) h_ABlocks[b];
    arg[4] = (uint64_t) h_C_CPUBlocks[b];
    CHECK_HSTR_RESULT (hStreams_EnqueueCompute (stream, "scalarProdMIC", 2, 3, arg, NULL, NULL, 0));
  }
  for (b = 0; b < blocks; b++)
  {
    stream = b % places;
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_C_CPUBlocks[b], h_C_CPUBlocks[b], Sub_RESULT_SZ[b], stream, HSTR_SINK_TO_SRC, NULL));
  }
  hStreams_ThreadSynchronize ();
*/

  tall = 0.0f;
  //for (i = 0; i < ITERATION; i++)
  { 
    tbegin = dtimeGet ();

    for (b = 0; b < blocks; b++)
    {
      stream = b % places;
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_ABlocks[b], h_ABlocks[b], Sub_DATA_SZ[b], stream , HSTR_SRC_TO_SINK, NULL));
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_BBlocks[b], h_BBlocks[b], Sub_DATA_SZ[b], stream , HSTR_SRC_TO_SINK, NULL));
    }
    for (b = 0; b < blocks; b++)
    {
      stream = b % places;
    arg[1] = (uint64_t) Sub_VECTOR_N[b];
      arg[2] = (uint64_t) h_BBlocks[b];
      arg[3] = (uint64_t) h_ABlocks[b];
      arg[4] = (uint64_t) h_C_CPUBlocks[b];
      CHECK_HSTR_RESULT (hStreams_EnqueueCompute (stream, "scalarProdMIC", 2, 3, arg, NULL, NULL, 0));
    }
/*
    for (b = 0; b < blocks; b++)
    {
      stream = b % places;
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_C_CPUBlocks[b], h_C_CPUBlocks[b], Sub_RESULT_SZ[b], stream, HSTR_SINK_TO_SRC, NULL));
    }
*/
    hStreams_ThreadSynchronize ();

    tall += (dtimeGet() - tbegin);
  }
  printf ("%d\t%d\t%lf\n", places, blocks, tall);

  hStreams_app_fini ();

/*
        scalarProdCPU(h_C_Ref, h_A, h_B, VECTOR_N, ELEMENT_N);

double sum_delta, sum_ref, delta, ref, L1norm;
        sum_delta = 0;
        sum_ref   = 0;
        for(i = 0; i < VECTOR_N; i++){
            delta = fabs(h_C_CPU[i] - h_C_Ref[i]);
            ref   = h_C_Ref[i];
            sum_delta += delta;
            sum_ref   += ref;
        }
        L1norm = sum_delta / sum_ref;
printf("L1 error: %E\n", L1norm);
*/


    free(h_C_CPU);
    free(h_C_Ref);
    free(h_B);
    free(h_A);
    free(h_C_CPUBlocks);
    free(h_BBlocks);
    free(h_ABlocks);
    free(Sub_RESULT_SZ);
    free(Sub_DATA_SZ);
    free(Sub_VECTOR_N);
    free(Sub_DATA_N);
}
