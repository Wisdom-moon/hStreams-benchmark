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



#ifndef MONTECARLO_COMMON_H
#define MONTECARLO_COMMON_H



////////////////////////////////////////////////////////////////////////////////
// Global types
////////////////////////////////////////////////////////////////////////////////
typedef struct{
    float S;
    float X;
    float T;
    float R;
    float V;
} TOptionData;

typedef struct
{
    float Expected;
    float Confidence;
} TOptionValue;



#endif
