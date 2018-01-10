/***************************************************************************
 *
 *            (C) Copyright 2010 The Board of Trustees of the
 *                        University of Illinois
 *                         All Rights Reserved
 *
 ***************************************************************************/

#include <parboil.h>
#include <parboil_hstreams.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "util.h"


/******************************************************************************
* Implementation: Reference
* Details:
* This implementations is a scalar, minimally optimized version. The only 
* optimization, which reduces the number of pointer chasing operations is the 
* use of a temporary pointer for each row.
******************************************************************************/

int main(int argc, char* argv[]) {
  struct pb_TimerSet timers;
  struct pb_Parameters *parameters;

  printf("Base implementation of histogramming.\n");
  printf("Maintained by Nady Obeid <obeid1@ece.uiuc.edu>\n");

  parameters = pb_ReadParameters(&argc, argv);
  if (!parameters)
    return -1;

  if(!parameters->inpFiles[0]){
    fputs("Input file expected\n", stderr);
    return -1;
  }

  int numIterations;
  if (argc >= 2){
    numIterations = atoi(argv[1]);
  } else {
    fputs("Expected at least one command line argument\n", stderr);
    return -1;
  }

  int logical_streams = 1;
  int task_blocks = 1;
  if (argc >= 5)
  {
      logical_streams = atoi(argv[3]);
      task_blocks = atoi(argv[4]);
  }

  pb_InitializeTimerSet(&timers);
  
  char *inputStr = "Input";
  char *outputStr = "Output";
  
  pb_AddSubTimer(&timers, inputStr, pb_TimerID_IO);
  pb_AddSubTimer(&timers, outputStr, pb_TimerID_IO);
  
  pb_SwitchToSubTimer(&timers, inputStr, pb_TimerID_IO);  

  unsigned int img_width, img_height;
  unsigned int histo_width, histo_height;

  FILE* f = fopen(parameters->inpFiles[0],"rb");
  int result = 0;

  result += fread(&img_width,    sizeof(unsigned int), 1, f);
  result += fread(&img_height,   sizeof(unsigned int), 1, f);
  result += fread(&histo_width,  sizeof(unsigned int), 1, f);
  result += fread(&histo_height, sizeof(unsigned int), 1, f);

  if (result != 4){
    fputs("Error reading input and output dimensions from file\n", stderr);
    return -1;
  }

  unsigned int* img = (unsigned int*) malloc (img_width*img_height*sizeof(unsigned int));
  unsigned int * histo = (unsigned int*) calloc (histo_width*histo_height, sizeof(unsigned int));
  
  pb_SwitchToSubTimer(&timers, "Input", pb_TimerID_IO);

  result = fread(img, sizeof(unsigned int), img_width*img_height, f);

  fclose(f);

  if (result != img_width*img_height){
    fputs("Error reading input array from file\n", stderr);
    return -1;
  }

  pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);

/////////////////////
  parboil_hstreams_init (logical_streams, "kernel.so");
  CHECK_HSTR_RESULT(hStreams_app_create_buf(img,img_width*img_height*sizeof(unsigned int)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(histo,histo_height*histo_width*sizeof(unsigned int)));
  hStreams_ThreadSynchronize();
  int start_e = 0;
  int end_e;
  int sub_blocks = (img_width*img_height)/task_blocks;
  int remain_e = (img_width*img_height) % task_blocks;
  uint64_t args[4];
  args[2] = (uint64_t)img;
  args[3] = (uint64_t)histo;
  double tbegin ;
  double total_time = 0.0f;
  //double t_transfer = 0.0f;

  printf("Max blocks = %d\n", img_width*img_height);
/////////////////////
  int iter;
  for (iter = 0; iter < numIterations; iter++){
    memset(histo,0,histo_height*histo_width*sizeof(unsigned int));
    unsigned int i;
    start_e = 0;
////////////////////
    CHECK_HSTR_RESULT(hStreams_app_xfer_memory(histo, histo, histo_height*histo_width*sizeof(unsigned int),0, HSTR_SRC_TO_SINK, NULL));
    hStreams_ThreadSynchronize();
  tbegin = dtimeGet();
    for (i = 0; i < task_blocks; i++)
    {
      args[0] = (uint64_t)start_e;
      end_e = start_e + sub_blocks;
      if ( i < remain_e)
	end_e ++;
      args[1] = (uint64_t)end_e;
      CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&img[start_e], &img[start_e], (end_e - start_e )*sizeof(unsigned int),i % logical_streams, HSTR_SRC_TO_SINK, NULL));
    //hStreams_ThreadSynchronize();
    //t_transfer += dtimeGet () - tbegin;
    //tbegin = dtimeGet ();
      CHECK_HSTR_RESULT(hStreams_EnqueueCompute(
                                i % logical_streams,
                                "histo_main",
                                2,
                                2,
                                args,
                                NULL,NULL,0));
      start_e = end_e;
    }
    hStreams_ThreadSynchronize();
    total_time += dtimeGet() - tbegin;

//////////////////////////////
  }
  printf("%d\t%d\t%lf\n", task_blocks, logical_streams, total_time /numIterations );
  //printf("Transfer time%lf\n", t_transfer / numIterations);
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(histo, histo, histo_height*histo_width*sizeof(unsigned int),0, HSTR_SINK_TO_SRC, NULL));
  hStreams_ThreadSynchronize();
  hStreams_app_fini();
//  pb_SwitchToTimer(&timers, pb_TimerID_IO);
  pb_SwitchToSubTimer(&timers, outputStr, pb_TimerID_IO);

  if (parameters->outFile) {
    dump_histo_img(histo, histo_height, histo_width, parameters->outFile);
  }

  pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);

  free(img);
  free(histo);

  pb_SwitchToTimer(&timers, pb_TimerID_NONE);

  //printf("\n");
  //pb_PrintTimerSet(&timers);
  pb_FreeParameters(parameters);

  return 0;
}
