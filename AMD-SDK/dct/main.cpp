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

#define BLOCK_SIZE 8
#define DCT_FORWARD 666
#define DCT_INVERSE 777

const int dir = DCT_FORWARD;

int main(	int argc, 
		char *argv [])
{

	uint32_t places_per_domain = 1;
  	uint32_t logical_streams_per_place = 1; // keep it simple
  	int stream = 0;
	int MAXLOGSTR = places_per_domain;
	int task=1;
	int blocks;
	int i;

uint imageW = 20480;
uint imageH = 20480;
uint stride = 20480;

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
	                    imageH = (uint)atol(argv[0]+2);
	                    break;
	                case 'w':
	                    imageW = (uint)atol(argv[0]+2);
	                    break;

	                default:
	                    break;
	            }
	        }
	        argc -= 1;
	        argv++;
	    }

	stride = imageW;
	task = imageH / blocks;
	//printf("partition=%d\ttask=%d\n",places_per_domain,task);
//	places_per_domain=8;
//	MAXLOGSTR=places_per_domain;
//	task=512;	

	hStreams_GetCurrentOptions(&hstreams_options, sizeof(hstreams_options));
    	hstreams_options.verbose = 0;
    	hstreams_options.phys_domains_limit = 256;  // Limit to 256 domains
       char *libNames[20] = {NULL,NULL};
  	unsigned int libNameCnt = 0;
  	libNames[libNameCnt++] = "kernel_cpu.so";
       hstreams_options.libNames = libNames;
	hstreams_options.libNameCnt = (uint16_t)libNameCnt;
  	hStreams_SetOptions(&hstreams_options);  
		
	int iret = hStreams_app_init(places_per_domain, logical_streams_per_place);
	if( iret != 0 ) { 
		printf("hstreams_app_init failed!\r\n"); 
		exit(-1); 
	}

	float *h_Input, *h_OutputCPU;	
	
	h_Input     = (float *)malloc(imageH * stride * sizeof(float));
	h_OutputCPU = (float *)malloc(imageH * stride * sizeof(float));
	
	srand(2009);
	
	
	for(uint i = 0; i < imageH; i++)
		for(uint j = 0; j < imageW; j++)
			h_Input[i * stride + j] = (float)rand() / (float)RAND_MAX;
	
	int header,tail;
	
	uint64_t arg[7];
	arg[2] = (uint64_t)stride;
	arg[3] = (uint64_t)imageW;
	arg[4] = (uint64_t)dir;
	arg[5] = (uint64_t)h_Input;
	arg[6] = (uint64_t)h_OutputCPU;

	//create buffer
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_Input,imageH * stride * sizeof(float)));	
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_OutputCPU,imageH * stride * sizeof(float)));
	hStreams_ThreadSynchronize();


	long long time=0;
//for(int iteration=1;iteration<=11;iteration++)
{

	//total time
	long long total_Time=get_time();
	
	//kernel exe

	for(header=0;header<imageH; ){

		tail = header + task;
		if(tail>(imageH - BLOCK_SIZE - task)){
			tail = imageH;
		}

		arg[0] = (uint64_t)header;
		arg[1] = (uint64_t)tail;

		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&h_Input[header*stride], &h_Input[header*stride], (tail - header) * stride * sizeof(float),stream, HSTR_SRC_TO_SINK, NULL));

		CHECK_HSTR_RESULT(
				hStreams_EnqueueCompute(
										stream,
										"kernel_cpu",
										5,			  // scalar args
										2,			   // heap args
										arg,		   // arg array
										NULL,    // event
										NULL,		   // return value pointer
										0));		   // return value size

		
//		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&h_OutputCPU[header*stride], &h_OutputCPU[header*stride], task * stride * sizeof(float),stream, HSTR_SINK_TO_SRC, NULL));

		stream = (stream+1)%MAXLOGSTR;
		header = tail;
		
	}
	
	hStreams_ThreadSynchronize();

	total_Time = get_time()-total_Time;
//	printf("total time = %15.12f s\n",(float) total_Time / 1000000);
	time=time+total_Time;
}
	printf("%d\t%d\t%15.12f\n",places_per_domain, blocks, (float) time / 1000000);

	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_OutputCPU, h_OutputCPU, imageH * stride * sizeof(float),0, HSTR_SINK_TO_SRC, NULL));
	hStreams_ThreadSynchronize();
/*
	// dump results
        FILE *fptr;
	int counter=0;
	fptr = fopen("result.txt", "w");	
	for(int i=0; i<imageH * stride; i=i+1){
        	fprintf(fptr, "%f ", h_OutputCPU[i]);
		counter++;
		if(counter==10){
			fprintf(fptr,"\n");
			counter=0;
		}
	}
	fclose(fptr);
*/
	free(h_Input);
	free(h_OutputCPU);
	hStreams_app_fini();
	return 0.0;

}
