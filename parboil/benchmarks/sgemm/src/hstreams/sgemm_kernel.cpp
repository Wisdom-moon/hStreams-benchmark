/***************************************************************************
 *cr
 *cr            (C) Copyright 2010 The Board of Trustees of the
 *cr                        University of Illinois
 *cr                         All Rights Reserved
 *cr
 ***************************************************************************/

/* 
 * Base C implementation of MM
 */

#include <parboil_hstreams.h>
#include <iostream>


void basicSgemm( char transa, char transb, int m, int n, int k, float alpha, const float *A, int lda, const float *B, int ldb, float beta, float *C, int ldc,
		int logical_streams, int task_blocks)
{
  if ((transa != 'N') && (transa != 'n')) {
    std::cerr << "unsupported value of 'transa' in regtileSgemm()" << std::endl;
    return;
  }
  
  if ((transb != 'T') && (transb != 't')) {
    std::cerr << "unsupported value of 'transb' in regtileSgemm()" << std::endl;
    return;
  }

  parboil_hstreams_init (logical_streams, "kernel.so");
  CHECK_HSTR_RESULT(hStreams_app_create_buf((float *)A,m * k * sizeof (float)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf((float *)B,k * n * sizeof (float)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf((float *)C,m * n * sizeof (float)));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory((float *)A, (float *)A,m *k *sizeof(float),0 , HSTR_SRC_TO_SINK, NULL));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory((float *)B, (float *)B,k *n *sizeof(float),0 , HSTR_SRC_TO_SINK, NULL));

  task_blocks = m < task_blocks ? m : task_blocks;
  int sub_blocks = m / task_blocks;
  int remain_m = m % task_blocks;
  int start_m = 0;
  int end_m;
  uint64_t args[13];

  args[2] = (uint64_t) m;
  args[3] = (uint64_t) n;
  args[4] = (uint64_t) k;
  args[5] = (uint64_t) alpha;
  args[6] = (uint64_t) beta;
  args[7] = (uint64_t) lda;
  args[8] = (uint64_t) ldb;
  args[9] = (uint64_t) ldc;
  args[10] = (uint64_t) A;
  args[11] = (uint64_t) B;
  args[12] = (uint64_t) C;

  hStreams_ThreadSynchronize();
  double tbegin = dtimeGet ();
  for (int i = 0; i < task_blocks; i++)
  {
    args[0] = (uint64_t)start_m;
    end_m = start_m + sub_blocks;
    if ( i < remain_m )
      end_m ++;
    args[1] = (uint64_t) end_m;
    CHECK_HSTR_RESULT(hStreams_EnqueueCompute(
                                i % logical_streams,
                                "Sgemm_kernel",
                                10,
                                3,
                                args,
                                NULL,NULL,0));
    start_m = end_m;
  }
  hStreams_ThreadSynchronize();
  printf("%d\t%d\t%lf\n", task_blocks, logical_streams, dtimeGet() - tbegin);
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory((float *)C, (float *)C,m * n* sizeof(float) ,0, HSTR_SINK_TO_SRC, NULL));
  hStreams_ThreadSynchronize();
  hStreams_app_fini();
}
