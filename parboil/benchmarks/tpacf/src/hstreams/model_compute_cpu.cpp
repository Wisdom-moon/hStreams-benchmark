/***************************************************************************
 *cr
 *cr            (C) Copyright 2007 The Board of Trustees of the
 *cr                        University of Illinois
 *cr                         All Rights Reserved
 *cr
 ***************************************************************************/
#include <sys/time.h>
#include <string.h>
#include <math.h>
#include <stdio.h> 

#include "model.h"

int doCompute(struct cartesian *data1, int n1, struct cartesian *data2, 
	      int n2, int doSelf, long long *data_bins, 
	      int nbins, float *binb, int logical_streams, int task_blocks)
{
  if (doSelf)
    {
      n2 = n1;
      data2 = data1;
      n1 --;
    }
  
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(data2, data2, n2 * sizeof (struct cartesian),0, HSTR_SRC_TO_SINK, NULL));
  
  task_blocks = n1 < task_blocks ? n1 : task_blocks;
  int sub_blocks = n1 / task_blocks;
  int remain_index = n1 % task_blocks;
  int start_index = 0;
  int end_index = 0;

  uint64_t args[9];
  args[2] = (uint64_t) n2;
  args[3] = (uint64_t) doSelf;
  args[4] = (uint64_t) nbins;
  args[5] = (uint64_t) data1;
  args[6] = (uint64_t) data2;
  args[7] = (uint64_t) data_bins;
  args[8] = (uint64_t) binb;
  
  hStreams_ThreadSynchronize();
  for ( int i = 0; i < task_blocks; i++)
  {
    args[0] = (uint64_t) start_index;
    end_index += sub_blocks;
    if ( i < remain_index)
      end_index ++;
    args[1] = (uint64_t) end_index;
    if (doSelf == 0)
    {
      CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&data1[start_index],&data1[start_index],(end_index - start_index)* sizeof (struct cartesian),i % logical_streams, HSTR_SRC_TO_SINK, NULL));
    }
    CHECK_HSTR_RESULT(hStreams_EnqueueCompute(
                                i % logical_streams,
                                "compute_kernel",
                                5,
                                4,
                                args,
                                NULL,NULL,0));
  }
  hStreams_ThreadSynchronize();

  return 0;
}

