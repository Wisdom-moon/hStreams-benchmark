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

#include <sink/COIPipeline_sink.h>
#include <omp.h>


////////////////////////////////////////////////////////////////////////////
// Calculate scalar products of VectorN vectors of ElementN elements on CPU.
// Straight accumulation in double precision.
////////////////////////////////////////////////////////////////////////////
COINATIVELIBEXPORT
void scalarProdMIC(
    uint64_t arg0, uint64_t arg1, uint64_t arg2, 
    uint64_t arg3, uint64_t arg4)
{
    float *h_C = (float *) arg4;
    float *h_A = (float *) arg3;
    float *h_B = (float *) arg2;
    int vectorN = (int) arg1;
    int elementN = (int) arg0;

#pragma omp parallel for
    for(int vec = 0; vec < vectorN; vec++){
        int vectorBase = elementN * vec;
        int vectorEnd  = vectorBase + elementN;

        double sum = 0;
        for(int pos = vectorBase; pos < vectorEnd; pos++)
            sum += h_A[pos] * h_B[pos];

        h_C[vec] = (float)sum;
    }
}
