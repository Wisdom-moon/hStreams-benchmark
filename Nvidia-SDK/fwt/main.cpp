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

const int log2Kernel = 7;

const int kernelN = 1 << log2Kernel;

const int KERNEL_SIZE = kernelN * sizeof(float);


int main(	int argc, 
		char *argv [])
{

	uint32_t places_per_domain = 1;
  	uint32_t logical_streams_per_place = 1; // keep it simple
  	int stream = 0;
	int MAXLOGSTR = places_per_domain;
	int task=1;
	int numBlocks ;
	int i;

int log2Data = 22;

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
	                    numBlocks = (int)atol(argv[0]+2);
	                    break;
	                case 'n':
	                    log2Data = (int)atol(argv[0]+2);
	                    break;

	                default:
	                    break;
	            }
	        }
	        argc -= 1;
	        argv++;
	    }

int   dataN = 1 << log2Data;
int   DATA_SIZE = dataN   * sizeof(float);
double NOPS = 3.0 * (double)dataN * (double)log2Data / 2.0;
	task = dataN / numBlocks;
//	printf("partition=%d\ttask=%d\n",places_per_domain,task);

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

//	printf("dataN: %d\tkernelN: %d\n",dataN,kernelN);

	float *h_Data, *h_Kernel,*h_ResultCPU;	
	
	h_Kernel	= (float *)malloc(KERNEL_SIZE);
	h_Data= (float *)malloc(DATA_SIZE);
	h_ResultCPU= (float *)malloc(DATA_SIZE);
	
	srand(2009);
	
	for (i = 0; i < kernelN; i++)
		h_Kernel[i] = (float)rand() / (float)RAND_MAX;
	
	for (i = 0; i < dataN; i++)
		h_Data[i] = (float)rand() / (float)RAND_MAX;

	HSTR_EVENT *eventCpy = new HSTR_EVENT[numBlocks];
	
	uint64_t arg[6];
	arg[2] = (uint64_t)log2Kernel;
	arg[3] = (uint64_t)h_ResultCPU;
	arg[4] = (uint64_t)h_Data;
	arg[5] = (uint64_t)h_Kernel;

	//create buffer
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_Kernel,KERNEL_SIZE));	
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_Data,DATA_SIZE));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_ResultCPU,DATA_SIZE));

	//total time
//	long long total_Time=get_time();
	//xfer data
	long long xfer_Time=get_time();
	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_Kernel, h_Kernel, KERNEL_SIZE,0, HSTR_SRC_TO_SINK, NULL));
	hStreams_ThreadSynchronize();
	
	xfer_Time=get_time()-xfer_Time;
//	printf("h2d time2 = %15.12f s\n",(float) xfer_Time / 1000000);
	
	//kernel exe
//	long long exe_Time=get_time();
	int eheader,etail,xheader,xtail;

	long long time=0;
//for(int iteration=1;iteration<=11;iteration++)
{

	long long total_Time=get_time();

	for(int i=0;i<dataN; ){

		xheader = i;
		xtail = xheader +task;
		eheader = xheader - kernelN;
		if(eheader<0){
			eheader=0;
		}

		if(xtail>=dataN - task){
			xtail = dataN;
		}

		etail = xtail + kernelN;
		if(etail>=dataN){
			etail=dataN;
		}


		//xfer data
		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&h_Data[eheader], &h_Data[eheader], (etail-eheader) * sizeof(float),stream, HSTR_SRC_TO_SINK, NULL));

//		if(counter>0){
//			CHECK_HSTR_RESULT(hStreams_app_event_wait(1, &eventCpy[counter-1]));
//		}

		arg[0] = (uint64_t)xheader;
		arg[1] = (uint64_t)xtail;
		CHECK_HSTR_RESULT(
						hStreams_EnqueueCompute(
												stream,
												"kernel_cpu",
												3,			  // scalar args
												3,			   // heap args
												arg,		   // arg array
												NULL,	 // event
												NULL,		   // return value pointer
												0));		   // return value size

		//xfer data back	
//		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&h_ResultCPU[eheader], &h_ResultCPU[eheader], (etail-eheader)*sizeof(float),stream, HSTR_SINK_TO_SRC, NULL));
		stream = (stream+1)%MAXLOGSTR;
		i = xtail;
//		counter++;
	
	}
	
	
	hStreams_ThreadSynchronize();
//	exe_Time=get_time()-exe_Time;
//	printf("exe time = %15.12f s\n",(float) exe_Time / 1000000);
	
	total_Time = get_time()-total_Time;
//	printf("total time = %15.12f s\n",(float) total_Time / 1000000);
	time=time+total_Time;
}
	printf("%d\t%d\t%15.12f\n",places_per_domain, numBlocks, (float) time / 1000000);
	
	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_ResultCPU, h_ResultCPU, DATA_SIZE, 0, HSTR_SINK_TO_SRC, NULL));
	hStreams_ThreadSynchronize();
/*
	// dump results
        FILE *fptr;
	counter=0;
	fptr = fopen("result.txt", "w");	
	for(int i=0; i<dataN; i=i+1){
        	fprintf(fptr, "%f ", h_ResultCPU[i]);
		counter++;
		if(counter==10){
			fprintf(fptr,"\n");
			counter=0;
		}
	}
	fclose(fptr);
*/
	free(h_Kernel);
	free(h_Data);
	free(h_ResultCPU);
	hStreams_app_fini();
	return 0.0;

}
