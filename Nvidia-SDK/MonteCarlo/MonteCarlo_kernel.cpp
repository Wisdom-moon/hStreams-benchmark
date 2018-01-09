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



#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <sink/COIPipeline_sink.h>
#include <omp.h>



////////////////////////////////////////////////////////////////////////////////
// Common types
////////////////////////////////////////////////////////////////////////////////
#include "MonteCarlo_common.h"


////////////////////////////////////////////////////////////////////////////////
// Black-Scholes formula for Monte Carlo results validation
////////////////////////////////////////////////////////////////////////////////
#define A1 0.31938153
#define A2 -0.356563782
#define A3 1.781477937
#define A4 -1.821255978
#define A5 1.330274429
#define RSQRT2PI 0.39894228040143267793994605993438


////////////////////////////////////////////////////////////////////////////////
// Moro's inverse Cumulative Normal Distribution function approximation
////////////////////////////////////////////////////////////////////////////////
extern "C" double MoroInvCND(double P){
    const double a1 = 2.50662823884;
    const double a2 = -18.61500062529;
    const double a3 = 41.39119773534;
    const double a4 = -25.44106049637;
    const double b1 = -8.4735109309;
    const double b2 = 23.08336743743;
    const double b3 = -21.06224101826;
    const double b4 = 3.13082909833;
    const double c1 = 0.337475482272615;
    const double c2 = 0.976169019091719;
    const double c3 = 0.160797971491821;
    const double c4 = 2.76438810333863E-02;
    const double c5 = 3.8405729373609E-03;
    const double c6 = 3.951896511919E-04;
    const double c7 = 3.21767881768E-05;
    const double c8 = 2.888167364E-07;
    const double c9 = 3.960315187E-07;
    double y, z;

    if(P <= 0 || P >= 1.0){
        printf("MoroInvCND(): bad parameter\n");
    }

    y = P - 0.5;
    if(fabs(y) < 0.42){
        z = y * y;
        z = y * (((a4 * z + a3) * z + a2) * z + a1) / ((((b4 * z + b3) * z + b2) * z + b1) * z + 1);
    }else{
        if(y > 0)
            z = log(-log(1.0 - P));
        else
            z = log(-log(P));

        z = c1 + z * (c2 + z * (c3 + z * (c4 + z * (c5 + z * (c6 + z * (c7 + z * (c8 + z * c9)))))));
        if(y < 0) z = -z;
    }

    return z;
}

extern "C" double NormalDistribution(unsigned int i, unsigned int pathN){
    double p = (double)(i + 1) / (double)(pathN + 1);
    return MoroInvCND(p);
}


////////////////////////////////////////////////////////////////////////////////
// CPU Monte Carlo
////////////////////////////////////////////////////////////////////////////////
static double endCallValue(double S, double X, double r, double MuByT, double VBySqrtT){
    double callValue = S * exp(MuByT + VBySqrtT * r) - X;
    return (callValue > 0) ? callValue : 0;
}

extern "C" void MonteCarloCPU(
    TOptionValue&    callValue,
    TOptionData optionData,
    float *h_Samples,
    int pathN
){
    const double        S = optionData.S;
    const double        X = optionData.X;
    const double        T = optionData.T;
    const double        R = optionData.R;
    const double        V = optionData.V;
    const double    MuByT = (R - 0.5 * V * V) * T;
    const double VBySqrtT = V * sqrt(T);

    double sum = 0, sum2 = 0;
    for(int pos = 0; pos < pathN; pos++){
        double    sample = (h_Samples != NULL) ? h_Samples[pos] : NormalDistribution(pos, pathN);
        double callValue = endCallValue(S, X, sample, MuByT, VBySqrtT);
        sum  += callValue;
        sum2 += callValue * callValue;
    }

    //Derive average from the total sum and discount by riskfree rate 
    callValue.Expected = (float)(exp(-R * T) * sum / (double)pathN);
    //Standart deviation
    double stdDev = sqrt(((double)pathN * sum2 - sum * sum)/ ((double)pathN * (double)(pathN - 1)));
    //Confidence width; in 95% of all cases theoretical value lies within these borders
    callValue.Confidence = (float)(exp(-R * T) * 1.96 * stdDev / sqrt((double)pathN));
}

COINATIVELIBEXPORT
void kernel_cpu( uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3)
{
  int i;
  int OPT_N = (int) arg0;
  int PATH_N = (int) arg1;
  TOptionData * optionData = (TOptionData *) arg2;
  TOptionValue *callValueCPU = (TOptionValue *) arg3;

#pragma omp parallel for
  for (i = 0; i < OPT_N; i++)
    MonteCarloCPU(callValueCPU[i], optionData[i], NULL, PATH_N);
}

