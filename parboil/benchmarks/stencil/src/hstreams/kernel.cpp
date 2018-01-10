/***************************************************************************
 *cr
 *cr            (C) Copyright 2010 The Board of Trustees of the
 *cr                        University of Illinois
 *cr                         All Rights Reserved
 *cr
 ***************************************************************************/
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <omp.h>
#include <assert.h>
#include <intel-coi/sink/COIPipeline_sink.h>


#include "common.h"

COINATIVELIBEXPORT void
stencil_kernel (uint64_t arg0,
	uint64_t arg1,
	uint64_t arg2,
	uint64_t arg3,
	uint64_t arg4,
	uint64_t arg5,
	uint64_t arg6,
	uint64_t arg7,
	uint64_t arg8
)
{
	//for(i=1;i<nx-1;i++)
  int start_index = (int) arg0;
  int end_index = (int) arg1;
  float c0 = (float) arg2;
  float c1 = (float) arg3;
  int nx = (int) arg4;
  int ny = (int) arg5;
  int nz = (int) arg6;
  
  float * A0 = (float *) arg7;
  float * Anext = (float *) arg8;
  int k;  
  #pragma omp parallel for
	for(k=start_index;k<end_index;k++)
	{
    int j,i;
		for(j=1;j<ny-1;j++)
		{
			for(i=1;i<nx-1;i++)
			{
  //i      #pragma omp critical
				Anext[Index3D (nx, ny, i, j, k)] = 
				(A0[Index3D (nx, ny, i, j, k + 1)] +
				A0[Index3D (nx, ny, i, j, k - 1)] +
				A0[Index3D (nx, ny, i, j + 1, k)] +
				A0[Index3D (nx, ny, i, j - 1, k)] +
				A0[Index3D (nx, ny, i + 1, j, k)] +
				A0[Index3D (nx, ny, i - 1, j, k)])*c1
				- A0[Index3D (nx, ny, i, j, k)]*c0;
			}
		}
	}
}
