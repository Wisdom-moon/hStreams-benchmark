
/***************************************************************************
 *cr
 *cr            (C) Copyright 2010 The Board of Trustees of the
 *cr                        University of Illinois
 *cr                         All Rights Reserved
 *cr
 ***************************************************************************/
#include <parboil.h>
#include <parboil_hstreams.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "file.h"
#include "common.h"


static int read_data(float *A0, int nx,int ny,int nz,FILE *fp) 
{	
	int s=0;
        int i, j, k;
	for(i=0;i<nz;i++)
	{
		for(j=0;j<ny;j++)
		{
			for(k=0;k<nx;k++)
			{
                                fread(A0+s,sizeof(float),1,fp);
				s++;
			}
		}
	}
	return 0;
}

int main(int argc, char** argv) {
	struct pb_TimerSet timers;
	struct pb_Parameters *parameters;
	

	
	printf("CPU-based 7 points stencil codes****\n");
	printf("Original version by Li-Wen Chang <lchang20@illinois.edu> and I-Jui Sung<sung10@illinois.edu>\n");
	printf("This version maintained by Chris Rodrigues  ***********\n");
	parameters = pb_ReadParameters(&argc, argv);

	pb_InitializeTimerSet(&timers);
	pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
	
	//declaration
	int nx,ny,nz;
	int size;
    int iteration;
	float c0=1.0f/6.0f;
	float c1=1.0f/6.0f/6.0f;

	if (argc<5) 
    {
      printf("Usage: probe nx ny nz tx ty t\n"
	     "nx: the grid size x\n"
	     "ny: the grid size y\n"
	     "nz: the grid size z\n"
		  "t: the iteration time\n");
      return -1;
    }

	nx = atoi(argv[1]);
	if (nx<1)
		return -1;
	ny = atoi(argv[2]);
	if (ny<1)
		return -1;
	nz = atoi(argv[3]);
	if (nz<1)
		return -1;
	iteration = atoi(argv[4]);
	if(iteration<1)
		return -1;

  int logical_streams = 1;
  int task_blocks = 1;
  if (argc > 6)
  {
    logical_streams = atoi(argv[5]);
    task_blocks = atoi(argv[6]);
  }
	
	//host data
	float *h_A0;
	float *h_Anext;

	size=nx*ny*nz;
	
	h_A0=(float*)malloc(sizeof(float)*size);
	h_Anext=(float*)malloc(sizeof(float)*size);
  FILE *fp = fopen(parameters->inpFiles[0], "rb");
	read_data(h_A0, nx,ny,nz,fp);
  fclose(fp);
  memcpy (h_Anext,h_A0 ,sizeof(float)*size);

  parboil_hstreams_init (logical_streams, "kernel.so");
  CHECK_HSTR_RESULT(hStreams_app_create_buf(h_A0,sizeof(float)*size));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(h_Anext,sizeof(float)*size));

  task_blocks = (nz-2) < task_blocks ? (nz-2) : task_blocks;
  int sub_blocks = (nz -2)/ task_blocks;
  int remain_index = (nz -2) % task_blocks;
  int start_index;
  int end_index;
  uint64_t args[9];
  args[2] = (uint64_t) c0;
  args[3] = (uint64_t) c1;
  args[4] = (uint64_t) nx;
  args[5] = (uint64_t) ny;
  args[6] = (uint64_t) nz;
  
  int t;
  hStreams_ThreadSynchronize();
  double tbegin = dtimeGet ();

  start_index = 1;
  for ( int i = 0; i < task_blocks; i++)
  {
    args[0] = (uint64_t) start_index;
    end_index = start_index + sub_blocks;
    if ( i < remain_index)
      end_index ++;
    args[1] = (uint64_t) end_index;
    args[7] = (uint64_t) h_A0;
    args[8] = (uint64_t) h_Anext;
    CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&h_A0[Index3D (nx, ny, 0, 0, start_index - 1)],
		&h_A0[Index3D (nx, ny, 0, 0, start_index - 1)],
		(Index3D (nx, ny, nx - 1, ny - 1, end_index)- 
		Index3D (nx, ny, 0, 0, start_index - 1) + 1)* sizeof (float),
		i % logical_streams, HSTR_SRC_TO_SINK, NULL));
    CHECK_HSTR_RESULT(hStreams_EnqueueCompute(
                                i % logical_streams,
                                "stencil_kernel",
                                7,
                                2,
                                args,
                                NULL,NULL,0));

    start_index = end_index;
  }
  hStreams_ThreadSynchronize(); 
  for(t=1;t<iteration;t++)
  {
    start_index = 1;
    if ( t % 2 == 0)
    {
      for ( int i = 0; i < task_blocks; i++)
      {
        args[0] = (uint64_t) start_index;
        end_index = start_index + sub_blocks;
        if ( i < remain_index)
          end_index ++;
        args[1] = (uint64_t) end_index;
        args[7] = (uint64_t) h_A0;
        args[8] = (uint64_t) h_Anext;
        CHECK_HSTR_RESULT(hStreams_EnqueueCompute(
                                i % logical_streams,
                                "stencil_kernel",
                                7,
                                2,
                                args,
                                NULL,NULL,0));

        start_index = end_index;
      }
    }
    else
    {
      for ( int i = 0; i < task_blocks; i++)
      {
        args[0] = (uint64_t) start_index;
        end_index = start_index + sub_blocks;
        if ( i < remain_index)
          end_index ++;
        args[1] = (uint64_t) end_index;
        args[7] = (uint64_t) h_Anext;
        args[8] = (uint64_t) h_A0;
        CHECK_HSTR_RESULT(hStreams_EnqueueCompute(
                                i % logical_streams,
                                "stencil_kernel",
                                7,
                                2,
                                args,
                                NULL,NULL,0));

        start_index = end_index;
      }
    }
    hStreams_ThreadSynchronize(); 
  }

  printf("%d\t%d\t%lf\n", task_blocks, logical_streams, dtimeGet() - tbegin);
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_A0,h_A0,size* sizeof (float) ,0, HSTR_SINK_TO_SRC, NULL));
  hStreams_ThreadSynchronize();
  hStreams_app_fini();

 
  if (parameters->outFile) {
    pb_SwitchToTimer(&timers, pb_TimerID_IO);
    outputData(parameters->outFile,h_A0,nx,ny,nz);
		
  }
	pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
		
	free (h_A0);
	free (h_Anext);
	pb_SwitchToTimer(&timers, pb_TimerID_NONE);

	pb_PrintTimerSet(&timers);
	pb_FreeParameters(parameters);

	return 0;

}
