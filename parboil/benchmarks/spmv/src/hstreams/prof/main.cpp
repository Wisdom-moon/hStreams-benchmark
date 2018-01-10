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

#include "file.h"
#include "convert_dataset.h"

static int generate_vector(float *x_vector, int dim) 
{	
	srand(54321);	
  int i;
	for(i=0;i<dim;i++)
	{
		x_vector[i] = (rand() / (float) RAND_MAX);
	}
	return 0;
}

/*
void jdsmv(int height, int len, float* value, int* perm, int* jds_ptr, int* col_index, float* vector,
        float* result){
        int i;
        int col,row;
        int row_index =0;
        int prem_indicator=0;
        for (i=0; i<len; i++){
                if (i>=jds_ptr[prem_indicator+1]){
                        prem_indicator++;
                        row_index=0;
                }
                if (row_index<height){
                col = col_index[i];
                row = perm[row_index];
                result[row]+=value[i]*vector[col];
                }

                row_index++;
        }
        return;
}
*/
int main(int argc, char** argv) {
	struct pb_TimerSet timers;
	struct pb_Parameters *parameters;
	
	
	
	
	
	//printf("CPU-based sparse matrix vector multiplication****\n");
	//printf("Original version by Li-Wen Chang <lchang20@illinois.edu> and Shengzhao Wu<wu14@illinois.edu>\n");
	//printf("This version maintained by Chris Rodrigues  ***********\n");
	parameters = pb_ReadParameters(&argc, argv);
	if ((parameters->inpFiles[0] == NULL) || (parameters->inpFiles[1] == NULL))
    {
      fprintf(stderr, "Expecting two input filenames\n");
      exit(-1);
    }
  int logical_streams = 1;
  int task_blocks = 1;
  if (argc > 2)
  {
    logical_streams = atoi (argv[1]);
    task_blocks = atoi (argv[2]);
  }

	
	pb_InitializeTimerSet(&timers);
	pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
	
	//parameters declaration
	int len;
	int depth;
	int dim;
	int pad=1;
	int nzcnt_len;
	
	//host memory allocation
	//matrix
	float *h_data;
	int *h_indices;
	int *h_ptr;
	int *h_perm;
	int *h_nzcnt;
	//vector
	float *h_Ax_vector;
    float *h_x_vector;
	
	
    //load matrix from files
	pb_SwitchToTimer(&timers, pb_TimerID_IO);
	//inputData(parameters->inpFiles[0], &len, &depth, &dim,&nzcnt_len,&pad,
	//    &h_data, &h_indices, &h_ptr,
	//    &h_perm, &h_nzcnt);

 

	int col_count;
	coo_to_jds(
		parameters->inpFiles[0], // bcsstk32.mtx, fidapm05.mtx, jgl009.mtx
		1, // row padding
		pad, // warp size
		1, // pack size
		1, // is mirrored?
		0, // binary matrix
		1, // debug level [0:2]
		&h_data, &h_ptr, &h_nzcnt, &h_indices, &h_perm,
		&col_count, &dim, &len, &nzcnt_len, &depth
	);		

  h_Ax_vector=(float*)malloc(sizeof(float)*dim);
  h_x_vector=(float*)malloc(sizeof(float)*dim);
//  generate_vector(h_x_vector, dim);
  input_vec( parameters->inpFiles[1],h_x_vector,dim);

	
	pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);

	
  int p, i;



  parboil_hstreams_init (logical_streams, "kernel.so");
  CHECK_HSTR_RESULT(hStreams_app_create_buf(h_nzcnt,nzcnt_len * sizeof (int)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(h_ptr,dim * sizeof (int)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(h_indices,len * sizeof (int)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(h_perm,dim * sizeof (int)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(h_data,len * sizeof (float)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(h_x_vector,dim * sizeof (float)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(h_Ax_vector,dim * sizeof (float)));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_ptr, h_ptr,dim * sizeof (int),0 , HSTR_SRC_TO_SINK, NULL));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_indices,h_indices,len * sizeof (int),0 , HSTR_SRC_TO_SINK, NULL));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_data,h_data,len * sizeof (float),0 , HSTR_SRC_TO_SINK, NULL));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_x_vector,h_x_vector,dim * sizeof (float),0 , HSTR_SRC_TO_SINK, NULL));

  task_blocks = dim < task_blocks ? dim : task_blocks;
  int sub_blocks = dim / task_blocks;
  int remain_dim = dim % task_blocks;
  int start_dim = 0;
  int end_dim;
  uint64_t args[9];
  args[2] = (uint64_t) h_nzcnt;
  args[3] = (uint64_t) h_ptr;
  args[4] = (uint64_t) h_indices;
  args[5] = (uint64_t) h_perm;
  args[6] = (uint64_t) h_data;
  args[7] = (uint64_t) h_x_vector;
  args[8] = (uint64_t) h_Ax_vector;

  hStreams_ThreadSynchronize();
printf("Max block = %d\n", dim);
  double t_begin = dtimeGet ();
	//main execution
	for(p=0;p<50;p++)
	{
  	  start_dim = 0;
	  for (i = 0; i < task_blocks; i++)
	  {
 	    args[0] = (uint64_t) start_dim;
	    end_dim = start_dim + sub_blocks;
 	    if ( i < remain_dim)
	      end_dim ++;
	    args[1] = (uint64_t) end_dim;
t_begin = dtimeGet ();
  	    CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&h_nzcnt[start_dim],&h_nzcnt[start_dim],(end_dim - start_dim)* sizeof (int),i % logical_streams, HSTR_SRC_TO_SINK, NULL));
  	    CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&h_perm[start_dim],&h_perm[start_dim],(end_dim - start_dim)* sizeof (int),i % logical_streams, HSTR_SRC_TO_SINK, NULL));
	  hStreams_ThreadSynchronize();
printf("Transfer = %lf\n", dtimeGet () - t_begin);
t_begin = dtimeGet ();
  	    CHECK_HSTR_RESULT(hStreams_EnqueueCompute(
                                i % logical_streams,
                                "Spmv_kernel",
                                2,
                                7,
                                args,
                                NULL,NULL,0));
	  hStreams_ThreadSynchronize();
printf("Exe = %lf\n", dtimeGet () - t_begin);

 	    start_dim = end_dim;
	  }
	  hStreams_ThreadSynchronize();
	}	
    printf("%d\t%d\t%lf\n", task_blocks, logical_streams, (dtimeGet() - t_begin) / 50);
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_Ax_vector,h_Ax_vector,dim * sizeof (float) ,0, HSTR_SINK_TO_SRC, NULL));
  hStreams_ThreadSynchronize();
  hStreams_app_fini();

	if (parameters->outFile) {
		pb_SwitchToTimer(&timers, pb_TimerID_IO);
		outputData(parameters->outFile,h_Ax_vector,dim);
		
	}
	pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
	
	free (h_data);
	free (h_indices);
	free (h_ptr);
	free (h_perm);
	free (h_nzcnt);
	free (h_Ax_vector);
	free (h_x_vector);
	pb_SwitchToTimer(&timers, pb_TimerID_NONE);

	//pb_PrintTimerSet(&timers);
	pb_FreeParameters(parameters);

	return 0;

}
