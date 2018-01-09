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



#include <math.h>
#include <omp.h>
#include <stdlib.h>
#include <sink/COIPipeline_sink.h>
#include "binomialOptions_common.h"


// Process an array of OptN options on CPU
// Note that CPU code is for correctness testing only and not for benchmarking.
////////////////////////////////////////////////////////////////////////////////
static double expiryCallValue(double S, double X, double vDt, int i){
    double d = S * exp(vDt * (2.0 * i - NUM_STEPS)) - X;
    return (d > 0) ? d : 0;
}

extern "C" void binomialOptions(
    float& callResult,
    TOptionData optionData
){
    double Call[NUM_STEPS + 1];

    const double       S = optionData.S;
    const double       X = optionData.X;
    const double       T = optionData.T;
    const double       R = optionData.R;
    const double       V = optionData.V;

    const double      dt = T / (double)NUM_STEPS;
    const double     vDt = V * sqrt(dt);
    const double     rDt = R * dt;
    //Per-step interest and discount factors
    const double      If = exp(rDt);
    const double      Df = exp(-rDt);
    //Values and pseudoprobabilities of upward and downward moves
    const double       u = exp(vDt);
    const double       d = exp(-vDt);
    const double      pu = (If - d) / (u - d);
    const double      pd = 1.0 - pu;
    const double  puByDf = pu * Df;
    const double  pdByDf = pd * Df;

    ///////////////////////////////////////////////////////////////////////
    // Compute values at expiration date:
    // call option value at period end is V(T) = S(T) - X
    // if S(T) is greater than X, or zero otherwise.
    // The computation is similar for put options.
    ///////////////////////////////////////////////////////////////////////
    for(int i = 0; i <= NUM_STEPS; i++)
        Call[i] = expiryCallValue(S, X, vDt, i);

    ////////////////////////////////////////////////////////////////////////
    // Walk backwards up binomial tree
    ////////////////////////////////////////////////////////////////////////
    for(int i = NUM_STEPS; i > 0; i--)
        for(int j = 0; j <= i - 1; j++)
            Call[j] = puByDf * Call[j + 1] + pdByDf * Call[j];

    callResult = (float)Call[0];
}


COINATIVELIBEXPORT
void kernel_cpu( uint64_t arg0, uint64_t arg1, uint64_t arg2)
{
  int i;
  int OPT_N = (int) arg0;
  TOptionData * optionData = (TOptionData *) arg1;
  float * callValueCPU = (float *) arg2;

//#pragma omp parallel for num_threads(128)
#pragma omp parallel for 
  for (i = 0; i < OPT_N; i++)
    binomialOptions(callValueCPU[i], optionData[i]);
}
