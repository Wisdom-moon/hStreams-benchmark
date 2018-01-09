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

void shrFillArray(float* pfData, int iSize)
{
    int i; 
    const float fScale = 1.0f / (float)RAND_MAX;
    for (i = 0; i < iSize; ++i) 
    {
        pfData[i] = fScale * rand();
    }
}


int main(	int argc, 
		char *argv [])
{

	uint32_t places_per_domain = 1;
  	uint32_t logical_streams_per_place = 1; // keep it simple
  	int stream = 0;
	int MAXLOGSTR = places_per_domain;
	int task=1;
	int blocks = 1;
	int i;

	unsigned int size_x = 1024;
	unsigned int size_y = 1024;

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
			case 'x':
				size_x=(int)atol(argv[0]+2);
				break;
			case 'y':
				size_y=(int)atol(argv[0]+2);
				break;

	                default:
	                    break;
	            }
	        }
	        argc -= 1;
	        argv++;
	    }
	task = size_y / blocks;
	
//	printf("partition=%d\ttask=%d\tsize_x=%d\tsize_y=%d\n",places_per_domain,task,size_x,size_y);

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
	
	long mem_size = sizeof(float) * size_x * size_y;
	
	float* h_idata = (float*)malloc(mem_size);
	float* h_odata = (float*) malloc(mem_size);
	
	srand(15235911);
	shrFillArray(h_idata, (size_x * size_y));
		
	uint64_t arg[6];
	arg[2] = (uint64_t)size_x;
	arg[3] = (uint64_t)size_y;
	arg[4] = (uint64_t)h_idata;
	arg[5] = (uint64_t)h_odata;

	//create buffer
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_idata,mem_size));	
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_odata,mem_size));
	hStreams_ThreadSynchronize();

	int header,tail;
	long long time=0;
//for(int iteration=1;iteration<=11;iteration++)
{
	
	//kernel exe
	long long exe_Time=get_time();
	for(header=0;header<size_y; ){

		tail=header+task;
		if(tail>=size_y - task){
			tail=size_y;
		}

		arg[0]=(uint64_t)header;
		arg[1]=(uint64_t)tail;
		
		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&h_idata[header*size_x], &h_idata[header*size_x], (tail - header) *size_x*sizeof(float),stream, HSTR_SRC_TO_SINK, NULL));
		
		CHECK_HSTR_RESULT(
						hStreams_EnqueueCompute(
												stream,
												"kernel_cpu",
												4,			  // scalar args
												2,			   // heap args
												arg,		   // arg array
												NULL,	 // event
												NULL,		   // return value pointer
												0));		   // return value size

		stream=(stream+1)%MAXLOGSTR;
		header=tail;
		
	}
	hStreams_ThreadSynchronize();
	exe_Time=get_time()-exe_Time;
	time=time+exe_Time;
//	printf("total time(h2d+exe) = %15.12f s\n",(float) exe_Time / 1000000);
}
	printf("%d\t%d\t%15.12f\n",places_per_domain, blocks, (float) time / 1000000);
	long long xfer_back_Time=get_time();
	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_odata, h_odata, mem_size,0, HSTR_SINK_TO_SRC, NULL));
	hStreams_ThreadSynchronize();
	
	xfer_back_Time=get_time()-xfer_back_Time;
//	printf("d2h time = %15.12f s\n",(float) xfer_back_Time / 1000000);
/*
	// dump results
        FILE *fptr;
	int counter=0;
	fptr = fopen("result.txt", "w");	
	for(int i=0; i<(size_x*size_y); i=i+1){
        	fprintf(fptr, "%f ", h_odata[i]);
		counter++;
		if(counter==10){
			fprintf(fptr,"\n");
			counter=0;
		}
	}
	fclose(fptr);
*/
	free(h_idata);
	free(h_odata);

	hStreams_app_fini();
	return 0.0;

}
