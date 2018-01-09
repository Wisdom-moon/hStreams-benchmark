#include <stdio.h>					
#include <stdlib.h>							
#include <math.h>
#include <string.h>
#include <omp.h>
#include "timer.cpp"
#include<ctime>

#include <hStreams_source.h>
#include <hStreams_app_api.h>
#include <intel-coi/common/COIMacros_common.h>

static HSTR_OPTIONS hstreams_options;

#define SWITCH_CHAR  '-'
#define KERNEL_RADIUS 8
#define KERNEL_LENGTH (2 * KERNEL_RADIUS + 1)


int main(	int argc, 
		char *argv [])
{

	uint32_t places_per_domain = 1;
  	uint32_t logical_streams_per_place = 1; // keep it simple
  	int stream = 0;
	int MAXLOGSTR = places_per_domain;
	int task=1;
	int blocks;

unsigned int imageW = 9216;
unsigned int imageH = 9216;

	while (argc)
	    {
	        if (*argv[0] == SWITCH_CHAR)
	        {
	            switch (*(argv[0]+1))
	            {
	                case 'p':
	                    places_per_domain= (int)atol(argv[0]+2);
			     MAXLOGSTR=places_per_domain;
	                    break;
	                case 'b':
	                    blocks = (int)atol(argv[0]+2);
	                    break;
	                case 'h':
	                    imageH = (unsigned int)atol(argv[0]+2);
	                    break;
	                case 'w':
	                    imageW = (unsigned int)atol(argv[0]+2);
	                    break;

	                default:
	                    break;
	            }
	        }
	        argc -= 1;
	        argv++;
	    }
	task = imageH / blocks;

//	printf("partition=%d\ttask=%d\n",places_per_domain,task);
/*	
	places_per_domain=14;
	MAXLOGSTR=places_per_domain;
	task=48;
*/
	hStreams_GetCurrentOptions(&hstreams_options, sizeof(hstreams_options));
    	hstreams_options.verbose = 0;
    	hstreams_options.phys_domains_limit = 256;  // Limit to 256 domains
       char *libNames[20] = {NULL,NULL};
  	unsigned int libNameCnt = 0;
  	libNames[libNameCnt++] = "kernel_cpu1.so";
	libNames[libNameCnt++] = "kernel_cpu2.so";
       hstreams_options.libNames = libNames;
	hstreams_options.libNameCnt = (uint16_t)libNameCnt;
  	hStreams_SetOptions(&hstreams_options);  
		
	int iret = hStreams_app_init(places_per_domain, logical_streams_per_place);
	if( iret != 0 ) { 
		printf("hstreams_app_init failed!\r\n"); 
		exit(-1); 
	}

	
	float *h_Kernel, *h_Input, *h_Buffer, *h_OutputCPU;

	
	h_Kernel	= (float *)malloc(KERNEL_LENGTH * sizeof(float));
	h_Input 	= (float *)malloc(imageW * imageH * sizeof(float));
	h_Buffer	= (float *)malloc(imageW * imageH * sizeof(float));
	h_OutputCPU = (float *)malloc(imageW * imageH * sizeof(float));

	
	srand(2009);
	for(unsigned int i = 0; i < KERNEL_LENGTH; i++)
		h_Kernel[i] = (float)(rand() % 16);
	
	for(unsigned int i = 0; i < imageW * imageH; i++)
		h_Input[i] = (float)(rand() % 16);
	
	uint64_t arg[8];
	arg[0] = (uint64_t)imageH;
	arg[1] = (uint64_t)imageW;
	arg[2] = (uint64_t)KERNEL_RADIUS;
	
	arg[5] = (uint64_t)h_Kernel;
	arg[6] = (uint64_t)h_Buffer;
	arg[7] = (uint64_t)h_Input;

	//create buffer
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_Kernel,KERNEL_LENGTH*sizeof(float)));	
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_Input,imageW * imageH * sizeof(float)));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_Buffer,imageW * imageH * sizeof(float)));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_OutputCPU,imageW * imageH * sizeof(float)));

	//total time1
	long long total_Time1=get_time();
	//xfer data
	//long long xfer_Time=get_time();
	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_Kernel, h_Kernel, KERNEL_LENGTH*sizeof(float),0, HSTR_SRC_TO_SINK, NULL));
	hStreams_ThreadSynchronize();
	
	//xfer_Time=get_time()-xfer_Time;
	//printf("h2d time = %15.12f s\n",(float) xfer_Time / 1000000);

	//total time2
	//long long total_Time2=get_time();
	//kernel exe
//	long long exe_Time=get_time();
	int header,tail;
	stream=0;

	long long time=0;
//for(int iteration=1;iteration<=11;iteration++)
{

	long long exe_Time=get_time();
	for(header=0;header<imageH; ){

		tail=header+task;
		if(tail>(imageH - task)){
			tail=imageH;
		}
		arg[3] = (uint64_t)header;
		arg[4] = (uint64_t)tail;

		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&h_Input[header*imageW], &h_Input[header*imageW], imageW* (tail - header) * sizeof(float),stream, HSTR_SRC_TO_SINK, NULL));
//		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&h_Buffer[header*imageW], &h_Buffer[header*imageW], imageW * task * sizeof(float),stream, HSTR_SRC_TO_SINK, NULL));

		CHECK_HSTR_RESULT(
				hStreams_EnqueueCompute(
										stream,
										"kernel_cpu1",
										5,			  // scalar args
										3,			   // heap args
										arg,		   // arg array
										NULL,    // event
										NULL,		   // return value pointer
										0));		   // return value size

		stream = (stream+1)%MAXLOGSTR;
		header = tail;
	
	}
	
	hStreams_ThreadSynchronize();

/*
	stream=0;
	for(header=0;header<imageW; ){

		tail=header+task;
		if(tail>imageW - task){
			tail=imageW;
		}
		arg[3] = (uint64_t)header;
		arg[4] = (uint64_t)tail;
		arg[7] = (uint64_t)h_OutputCPU;


		CHECK_HSTR_RESULT(
				hStreams_EnqueueCompute(
										stream,
										"kernel_cpu2",
										5,			  // scalar args
										3,			   // heap args
										arg,		   // arg array
										NULL,    // event
										NULL,		   // return value pointer
										0));		   // return value size

		stream = (stream+1)%MAXLOGSTR;
		header = header + task;
	
	}

	hStreams_ThreadSynchronize();
*/
	
	exe_Time=get_time()-exe_Time;
//	printf("exe time = %15.12f s\n",(float) exe_Time / 1000000);
	
		time=time+exe_Time;
}
	printf("%d\t%d\t%15.12f\n",places_per_domain, blocks, (float) time / 1000000);

//	long long xfer_back_Time=get_time();
	
//	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_OutputCPU, h_OutputCPU, imageW * imageH * sizeof(float),0, HSTR_SINK_TO_SRC, NULL));
//	hStreams_ThreadSynchronize();
	
//	xfer_back_Time=get_time()-xfer_back_Time;
//	printf("d2h time = %15.12f s\n",(float) xfer_back_Time / 1000000);
	
//	total_Time1 = get_time()-total_Time1;
	//total_Time2 = get_time()-total_Time2;
	//printf("total time1 = %15.12f s\ntotal time2= %15.12f\n",(float) total_Time1 / 1000000,(float) total_Time2 / 1000000);
//	printf("total time = %15.12f s\n",(float) total_Time1 / 1000000);
/*
	// dump results
        FILE *fptr;
	int counter=0;
	fptr = fopen("result.txt", "w");	
	for(int i=0; i<imageW * imageH; i=i+1){
        	fprintf(fptr, "%f ", h_OutputCPU[i]);
		counter++;
		if(counter==5){
			fprintf(fptr,"\n");
			counter=0;
		}
	}
	fclose(fptr);
*/
	free(h_Kernel);
	free(h_Input);
	free(h_OutputCPU);
	free(h_Buffer);
	hStreams_app_fini();
	return 0.0;

}
