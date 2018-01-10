#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <omp.h>
#include <assert.h>
#include <intel-coi/sink/COIPipeline_sink.h>

typedef enum memory_order {
    memory_order_relaxed, memory_order_consume, memory_order_acquire,
    memory_order_release, memory_order_acq_rel, memory_order_seq_cst
} memory_order;

COINATIVELIBEXPORT void
histo_main (uint64_t arg0,
	uint64_t arg1,
	uint64_t arg2,
	uint64_t arg3
)
{
  int start = (int )arg0;
  int end = (int) arg1;

  unsigned int * img = (unsigned int *)arg2;
  unsigned int * histo = (unsigned int *)arg3;

#pragma omp parallel for 
    for (int i = start; i < end; ++i) {
      const unsigned int value = img[i];

      if (histo[value] < UINT8_MAX) {
	__atomic_fetch_add_explicit(&histo[value],1,memory_order_seq_cst);
      }
    }
}
