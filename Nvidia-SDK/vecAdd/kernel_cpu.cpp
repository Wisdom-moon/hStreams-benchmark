#include <omp.h>
#include <stdlib.h>
#include <math.h>
#include <sink/COIPipeline_sink.h>


COINATIVELIBEXPORT
void kernel_cpu( uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3, uint64_t arg4, uint64_t arg5)
{
  int threads = (int) arg0;
  int max_iter = (int) arg1;
  int num = (int) arg2;
  float a = (float) arg3;
  float *vecA = (float *)arg4;
  float *vecB = (float *)arg5;
  
  int i, j, k;

  int NUM_THREAD = threads;

//#pragma omp parallel for num_threads(NUM_THREAD)
#pragma omp parallel for
  for (j = 0; j < num; j++)
    for (i = 0; i < max_iter; i++)
      vecB[j] = vecA[j] * a * vecB[j];

}
