#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <omp.h>
#include <assert.h>
#include <intel-coi/sink/COIPipeline_sink.h>

COINATIVELIBEXPORT void
Spmv_kernel ( uint64_t arg0,
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

  int start_dim = (int) arg0;
  int end_dim = (int) arg1;

  int * h_nzcnt = (int *) arg2;
  int *h_ptr = (int *)arg3;
  int *h_indices = (int *) arg4;
  int * h_perm = (int *) arg5;
  float * h_data = (float *) arg6;
  float * h_x_vector = (float *) arg7;
  float * h_Ax_vector = (float *) arg8;

  int i;
#pragma omp parallel for
		for (i = start_dim; i < end_dim; i++) {
      int k;
		  float sum = 0.0f;
		  //int  bound = h_nzcnt[i / 32];
		  int  bound = h_nzcnt[i];
		  for(k=0;k<bound;k++ ) {
			int j = h_ptr[k] + i;
			int in = h_indices[j];

			float d = h_data[j];
			float t = h_x_vector[in];

			sum += d*t;
		  }
    //  #pragma omp critical 
		  h_Ax_vector[h_perm[i]] = sum;
		}
}
