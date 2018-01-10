#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <omp.h>
#include <assert.h>
#include <intel-coi/sink/COIPipeline_sink.h>

#include <sys/time.h>
#include "model.h"

typedef enum memory_order {
    memory_order_relaxed, memory_order_consume, memory_order_acquire,
    memory_order_release, memory_order_acq_rel, memory_order_seq_cst
} memory_order;


COINATIVELIBEXPORT void
compute_kernel (uint64_t arg0,
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
  int start_index = arg0;
  int end_index = arg1;

  int n2 = (int) arg2;
  int doSelf = (int) arg3;
  int nbins = (int) arg4;
  struct cartesian *data1 = (struct cartesian *)arg5;
  struct cartesian *data2 = (struct cartesian *)arg6;
  long long * data_bins = (long long *)arg7;
  float * binb = (float *)arg8;
  

  int i, j, k;
  for (i = start_index; i < end_index; i++)
    {
      const register float xi = data1[i].x;
      const register float yi = data1[i].y;
      const register float zi = data1[i].z;

#pragma omp parallel for      
      for (j = ((doSelf) ? i+1 : 0); j < n2; j++)
        {
	  register float dot = xi * data2[j].x + yi * data2[j].y + 
	    zi * data2[j].z;
	  
	  register int min = 0;
	  register int max = nbins;
	  register int k, indx;
	  

	  while (max > min+1)
            {
	      k = (min + max) / 2;
	      if (dot >= binb[k]) 
		max = k;
	      else 
		min = k;
            };
	  if (dot >= binb[min]) 
	    {
		__atomic_fetch_add_explicit(&data_bins[min],1,memory_order_seq_cst);
	    }
	  else if (dot < binb[max]) 
	    { 
		__atomic_fetch_add_explicit(&data_bins[max+1],1,memory_order_seq_cst);
	    }
	  else 
	    { 
		__atomic_fetch_add_explicit(&data_bins[max],1,memory_order_seq_cst);
	    }
        }
    }
}
