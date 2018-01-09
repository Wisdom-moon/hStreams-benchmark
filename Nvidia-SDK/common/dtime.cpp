/*
 * Copyright 2012 Intel Corporation.
 *
 * This file is subject to the Intel Sample Source Code License. A copy
 * of the Intel Sample Source Code License is included.
 */

//=======================timer stuff ===============
#include <stdio.h>
#include <sys/time.h>

// Timing Prototypes: Include where needed
#include "dtime.h"
//void  dtimeInit();
//double dtimeGet();
//double dtimeSince(double t1,char *str);
//double dtimeElapse(double t1);

// Timing Definitions: Included once.
static double Global_Tickrate = 0.0;
#define DTIMEINITMSG _T("You need to call dtimeInit(); once on Windows")
#define DTIMEINITERR _T("Coding Error")

double dtimeGet()
{
  double t;
  struct timeval tv1;
  gettimeofday(&tv1,NULL);
  t = (tv1.tv_sec) + 1.0e-6*tv1.tv_usec;
  return(t);
}

double dtimeSince(double t1,char *str)
{
  double t2;
  double telapsed;
  struct timeval tv2;
  gettimeofday(&tv2,NULL);
  t2 = (tv2.tv_sec) + 1.0e-6*tv2.tv_usec;
  telapsed = t2 - t1;
  printf("%.5g secs <-- Elapsed Time for: '%s'\r\n",telapsed,str);
  fflush(stdout);
  return( telapsed );
}

double dtimeElapse(double t1)
{
  double t2;
  double telapsed;
  struct timeval tv2;
  gettimeofday(&tv2,NULL);
  t2 = (tv2.tv_sec) + 1.0e-6*tv2.tv_usec;
  telapsed = t2 - t1;
  return( telapsed );
}


void dtimeInit()
{
  return;
}
//===================================== end of timer stuff
