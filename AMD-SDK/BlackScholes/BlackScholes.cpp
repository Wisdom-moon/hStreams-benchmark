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
 * This sample evaluates fair call and put prices for a
 * given set of European options by Black-Scholes formula.
 * See supplied whitepaper for more explanations.
 */

#include <stdio.h>
#include <stdlib.h>
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

extern "C" void BlackScholesCPU(
    float *h_CallResult,
    float *h_PutResult,
    float *h_StockPrice,
    float *h_OptionStrike,
    float *h_OptionYears,
    float Riskfree,
    float Volatility,
    int optN
);

////////////////////////////////////////////////////////////////////////////////
// Data configuration
////////////////////////////////////////////////////////////////////////////////

const float      RISKFREE = 0.02f;
const float    VOLATILITY = 0.30f;

////////////////////////////////////////////////////////////////////////////////
// Main program
////////////////////////////////////////////////////////////////////////////////
int main(int argc, char **argv)
{

  uint32_t places= 1;
  uint32_t streams= 1;
  int stream = 0;
  int blocks = 1;

  int size;
  int opt_size;
  int *sub_size;
  int *sub_opt_size;
  int b;
  double tbegin = 0.0, tall, tmp;


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
  opt_size = size * sizeof(float);
  sub_size = (int *) malloc (sizeof (int) * blocks);
  sub_opt_size = (int *) malloc (sizeof (int) * blocks);
  for ( b = 0; b < blocks - 1; b++)
  {
  sub_size[b] = size / blocks;
  sub_opt_size[b] = sub_size[b] * sizeof (float);
  }
  sub_size[blocks - 1] = size - (blocks - 1) * ( size / blocks);
  sub_opt_size[blocks - 1] = sub_size[blocks - 1] * sizeof (float);;

/*
for (b = 0; b < blocks; b++)
{
printf ("sub size %d\t", sub_size[b]);
}
printf("\n");
for (b = 0; b < blocks; b++)
{
printf ("sub opt size %d\t", sub_opt_size[b]);
}
printf("\n");
*/


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

    float
        *h_CallResultCPU,
        *h_PutResultCPU,
        *h_CallResultRef,
        *h_PutResultRef,
        *h_StockPrice,
        *h_OptionStrike,
        *h_OptionYears;

    double
        delta, ref, sum_delta, sum_ref, max_delta, L1norm, gpuTime;

    int i;

        h_CallResultCPU = (float *)malloc(opt_size);
        h_PutResultCPU  = (float *)malloc(opt_size);
        h_CallResultRef = (float *)malloc(opt_size);
        h_PutResultRef  = (float *)malloc(opt_size);
        h_StockPrice    = (float *)malloc(opt_size);
        h_OptionStrike  = (float *)malloc(opt_size);
        h_OptionYears   = (float *)malloc(opt_size);

        srand(5347);
        //Generate options set
        for(i = 0; i < size; i++){
            h_CallResultCPU[i] = 0.0f;
            h_PutResultCPU[i]  = -1.0f;
            h_CallResultRef[i] = 0.0f;
            h_PutResultRef[i]  = -1.0f;
            h_StockPrice[i]    = RandFloat(5.0f, 30.0f);
            h_OptionStrike[i]  = RandFloat(1.0f, 100.0f);
            h_OptionYears[i]   = RandFloat(0.25f, 10.0f);
        }


     float **h_CallResultCPUBlocks = (float **)malloc (blocks * sizeof (float *));
     float **h_PutResultCPUBlocks = (float **)malloc (blocks * sizeof (float *));
     float **h_StockPriceBlocks = (float **)malloc (blocks * sizeof (float *));
     float **h_OptionStrikeBlocks = (float **)malloc (blocks * sizeof (float *));
     float **h_OptionYearsBlocks = (float **)malloc (blocks * sizeof (float *));
  for (b = 0; b < blocks; b++)
  {
    h_CallResultCPUBlocks[b] = &h_CallResultCPU[b*sub_size[0]];
    h_PutResultCPUBlocks[b] = &h_PutResultCPU[b*sub_size[0]];
    h_StockPriceBlocks[b] = &h_StockPrice[b*sub_size[0]];
    h_OptionStrikeBlocks[b] = &h_OptionStrike[b*sub_size[0]];
    h_OptionYearsBlocks[b] = &h_OptionYears[b*sub_size[0]];

  CHECK_HSTR_RESULT (hStreams_app_create_buf (h_CallResultCPUBlocks[b], sub_opt_size[b]));
  CHECK_HSTR_RESULT (hStreams_app_create_buf (h_PutResultCPUBlocks[b], sub_opt_size[b]));
  CHECK_HSTR_RESULT (hStreams_app_create_buf (h_StockPriceBlocks[b], sub_opt_size[b]));
  CHECK_HSTR_RESULT (hStreams_app_create_buf (h_OptionStrikeBlocks[b], sub_opt_size[b]));
  CHECK_HSTR_RESULT (hStreams_app_create_buf (h_OptionYearsBlocks[b] , sub_opt_size[b]));
  }
  hStreams_ThreadSynchronize ();

  uint64_t arg[8];
  arg[1] = (uint64_t) VOLATILITY;
  arg[2] = (uint64_t) RISKFREE;

  tall = 0.0f;

  tbegin = dtimeGet();
  for (b = 0; b < blocks; b++)
  {
    stream = b % places;
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_OptionYearsBlocks[b] , h_OptionYearsBlocks[b] , sub_opt_size[b], stream , HSTR_SRC_TO_SINK, NULL));
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_OptionStrikeBlocks[b] , h_OptionStrikeBlocks[b] , sub_opt_size[b], stream , HSTR_SRC_TO_SINK, NULL));
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_StockPriceBlocks[b] , h_StockPriceBlocks[b] , sub_opt_size[b], stream , HSTR_SRC_TO_SINK, NULL));
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_PutResultCPUBlocks[b] , h_PutResultCPUBlocks[b] , sub_opt_size[b], stream , HSTR_SRC_TO_SINK, NULL));
//printf("Blokcs: Year %E, Strike %E, Price %E\n", h_OptionYearsBlocks[b][0], h_OptionStrikeBlocks[b][0], h_StockPriceBlocks[b][0]);

  }
//printf("Year %E, Strike %E, Price %E\n", h_OptionYears[0], h_OptionStrike[0], h_StockPrice[0]);
  for (b = 0; b < blocks; b++)
  {
    stream = b % places;
    arg[0] = (uint64_t) sub_size[b];
    arg[3] = (uint64_t) h_OptionYearsBlocks[b];
    arg[4] = (uint64_t) h_OptionStrikeBlocks[b];
    arg[5] = (uint64_t) h_StockPriceBlocks[b];
    arg[6] = (uint64_t) h_PutResultCPUBlocks[b];
    arg[7] = (uint64_t) h_CallResultCPUBlocks[b];
    CHECK_HSTR_RESULT (hStreams_EnqueueCompute (stream, "BlackScholes", 3, 5, arg, NULL, NULL, 0));
  }
/*  for (b = 0; b < blocks; b++)
  {
    stream = b % places;
//printf ("h_CallResultCPUBlocks %E\t", h_CallResultCPUBlocks[b][0]);
//printf("sub_opt_size[b] %d\n", sub_opt_size[b]);
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_CallResultCPUBlocks[b] , h_CallResultCPUBlocks[b] , sub_opt_size[b], stream , HSTR_SINK_TO_SRC, NULL));
  }*/

  hStreams_ThreadSynchronize ();
  tall = (dtimeGet() - tbegin);
  printf ("%d\t%d\t%lf\n",places, blocks, tall);

/*
  tall = 0.0f;
  for (i = 0; i < ITERATION; i++)
  {
    tbegin = dtimeGet ();
    for (b = 0; b < blocks; b++)
    {
      stream = b % places;
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_OptionYearsBlocks[b] , h_OptionYearsBlocks[b] , sub_opt_size[b], stream , HSTR_SRC_TO_SINK, NULL));
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_OptionStrikeBlocks[b] , h_OptionStrikeBlocks[b] , sub_opt_size[b], stream , HSTR_SRC_TO_SINK, NULL));
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_StockPriceBlocks[b] , h_StockPriceBlocks[b] , sub_opt_size[b], stream , HSTR_SRC_TO_SINK, NULL));
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_PutResultCPUBlocks[b] , h_PutResultCPUBlocks[b] , sub_opt_size[b], stream , HSTR_SRC_TO_SINK, NULL));

    }
    for (b = 0; b < blocks; b++)
    {
      stream = b % places;
      arg[0] = (uint64_t) sub_size[b];
      arg[3] = (uint64_t) h_OptionYearsBlocks[b];
      arg[4] = (uint64_t) h_OptionStrikeBlocks[b];
      arg[5] = (uint64_t) h_StockPriceBlocks[b];
      arg[6] = (uint64_t) h_PutResultCPUBlocks[b];
      arg[7] = (uint64_t) h_CallResultCPUBlocks[b];
      CHECK_HSTR_RESULT (hStreams_EnqueueCompute (stream, "BlackScholes", 3, 5, arg, NULL, NULL, 0));
    }
    for (b = 0; b < blocks; b++)
    {
      stream = b % places;
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (h_CallResultCPUBlocks[b] , h_CallResultCPUBlocks[b] , sub_opt_size[b], stream , HSTR_SINK_TO_SRC, NULL));
    }


    hStreams_ThreadSynchronize ();
    tall += (dtimeGet() - tbegin);

  }

  printf ("Test %d Option sets: %lfs\n", size, tall / ITERATION);
*/
  hStreams_app_fini ();

//printf ("h_CallResultCPUBlocks %E\n", h_CallResultCPUBlocks[0][0]);

/*
        BlackScholesCPU(
            h_CallResultRef,
            h_PutResultRef,
            h_StockPrice,
            h_OptionStrike,
            h_OptionYears,
            RISKFREE,
            VOLATILITY,
            size 
        );

        sum_delta = 0;
        sum_ref   = 0;
        max_delta = 0;
        for(i = 0; i < size; i++){
            ref   = h_CallResultRef[i];
            delta = fabs(h_CallResultRef[i] - h_CallResultCPU[i]);
            if(delta > max_delta) max_delta = delta;
            sum_delta += delta;
            sum_ref   += fabs(ref);
	  //printf ("Ref %E, MIC %E\n", h_CallResultRef[i], h_CallResultCPU[i]);
        }
        L1norm = sum_delta / sum_ref;
        printf("L1 norm: %E\n", L1norm);
        printf("Max absolute error: %E\n\n", max_delta);

*/
    free(h_CallResultCPUBlocks);
    free(h_OptionYearsBlocks); 
    free(h_OptionStrikeBlocks);
    free(h_StockPriceBlocks);
    free(h_PutResultCPUBlocks);
    free(sub_size);
    free(sub_opt_size);
        free(h_OptionYears);
        free(h_OptionStrike);
        free(h_StockPrice);
        free(h_PutResultCPU);
        free(h_CallResultCPU);
        free(h_PutResultRef);
        free(h_CallResultRef);

}
