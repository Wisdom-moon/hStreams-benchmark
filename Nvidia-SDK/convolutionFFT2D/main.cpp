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

const int kernelH = 7;
const int kernelW = 6;
const int kernelY = 3;
const int kernelX = 4;


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

	int header,tail,temp;

int   dataH = 6144;
int   dataW = 6144;

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
	                    dataH = (int)atol(argv[0]+2);
	                    break;
	                case 'w':
	                    dataW = (int)atol(argv[0]+2);
	                    break;

	                default:
	                    break;
	            }
	        }
	        argc -= 1;
	        argv++;
	    }

	task = dataH / blocks;
//	printf("partition=%d\ttask=%d\n",places_per_domain,task);
	
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

	
	float *h_Data, *h_Kernel, *h_ResultCPU;
	
	h_Data		= (float *)malloc(dataH   * dataW * sizeof(float));
	h_Kernel	= (float *)malloc(kernelH * kernelW * sizeof(float));
	h_ResultCPU = (float *)malloc(dataH   * dataW * sizeof(float));
	
	
	srand(2009);
	
	for(int i = 0; i < dataH * dataW; i++)
            h_Data[i] = (float)(rand() % 16);
        for(int i = 0; i < kernelH * kernelW; i++)
            h_Kernel[i] = (float)(rand() % 16);
	
	
	
	uint64_t arg[11];
	arg[2] = (uint64_t)dataH;
	arg[3] = (uint64_t)dataW;
	arg[4] = (uint64_t)kernelH;
	arg[5] = (uint64_t)kernelW;
	arg[6] = (uint64_t)kernelY;
	arg[7] = (uint64_t)kernelX;
	arg[8] = (uint64_t)h_ResultCPU;
	arg[9] = (uint64_t)h_Data;
	arg[10] = (uint64_t)h_Kernel;
	

	//create buffer
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_Data,dataH   * dataW * sizeof(float)));	
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_Kernel,kernelH * kernelW * sizeof(float)));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_ResultCPU,dataH   * dataW * sizeof(float)));
	hStreams_ThreadSynchronize();


	long long time=0;
//for(int iteration=1;iteration<=11;iteration++)
{

	//total time
//	long long total_Time=get_time();
	//xfer data
	long long xfer_Time=get_time();
	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_Kernel, h_Kernel, kernelH * kernelW * sizeof(float),0, HSTR_SRC_TO_SINK, NULL));
	hStreams_ThreadSynchronize();
	
	xfer_Time=get_time()-xfer_Time;
//	printf("h2d time2 = %15.12f s\n",(float) xfer_Time / 1000000);
	
	//kernel exe
	long long exe_Time=get_time();
	for(header=0;header<dataH; ){

		tail = header + task;
		temp= task + kernelX;

		if(tail>(dataH - kernelX - task)){
			tail=dataH;
			temp = tail - header;
		}

		//xfer data
		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&h_Data[header*dataW], &h_Data[header*dataW], temp   * dataW * sizeof(float),stream, HSTR_SRC_TO_SINK, NULL));

		arg[0] = (uint64_t)header;
		arg[1] = (uint64_t)tail;
		//exe
		CHECK_HSTR_RESULT(
				hStreams_EnqueueCompute(
										stream,
										"kernel_cpu",
										8,			  // scalar args
										3,			   // heap args
										arg,		   // arg array
										NULL,    // event
										NULL,		   // return value pointer
										0));		   // return value size

		
//		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&h_ResultCPU[header*dataW], &h_ResultCPU[header*dataW], task	 * dataW * sizeof(float),stream, HSTR_SINK_TO_SRC, NULL));

		stream = (stream+1)%MAXLOGSTR;
		header = tail;
	
	}
	
	hStreams_ThreadSynchronize();
	exe_Time=get_time()-exe_Time;
//	printf("exe time = %15.12f s\n",(float) exe_Time / 1000000);
	time=time+exe_Time;
}

	printf("%d\t%d\t%15.12f\n",places_per_domain, blocks, (float) time / 1000000);

	//CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_ResultCPU, h_ResultCPU, dataH * dataW * sizeof(float),0, HSTR_SINK_TO_SRC, NULL));
	hStreams_ThreadSynchronize();
//	total_Time = get_time()-total_Time;
//	printf("total time = %15.12f s\n",(float) total_Time / 1000000);
/*
	// dump results
        FILE *fptr;
	int counter=0;
	fptr = fopen("result.txt", "w");	
	for(int i=0; i<dataH   * dataW; i=i+1){
        	fprintf(fptr, "%f ", h_ResultCPU[i]);
		counter++;
		if(counter==10){
			fprintf(fptr,"\n");
			counter=0;
		}
	}
	fclose(fptr);
*/
	hStreams_app_fini();
	return 0.0;

}
