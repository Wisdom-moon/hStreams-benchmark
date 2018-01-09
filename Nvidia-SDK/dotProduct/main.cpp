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

// Round Up Division function
int shrRoundUp(int group_size, int global_size) 
{
    int r = global_size % group_size;
    if(r == 0) 
    {
        return global_size;
    } else 
    {
        return global_size + group_size - r;
    }
}

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
	int blocks;
	int i;

	int iNumElements= 40000000;
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
	                case 'n':
	                    iNumElements = (int)atol(argv[0]+2);
	                    break;

	                default:
	                    break;
	            }
	        }
	        argc -= 1;
	        argv++;
	    }
	task = iNumElements / blocks;
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
	
	int szLocalWorkSize = 256;
    	int szGlobalWorkSize = shrRoundUp((int)szLocalWorkSize, iNumElements);
//	printf("szGlobalWorkSize=%d\tiNumElements=%d\n",szGlobalWorkSize,iNumElements);
		
	float *srcA = (float *)malloc(sizeof(float) * 4 * szGlobalWorkSize);
	float *srcB = (float *)malloc(sizeof(float) * 4 * szGlobalWorkSize);
	float *dst = (float *)malloc(sizeof(float) * szGlobalWorkSize);
	shrFillArray((float*)srcA, 4 * iNumElements);
	shrFillArray((float*)srcB, 4 * iNumElements);
	
	uint64_t arg[5];
	arg[2] = (uint64_t)srcA;
	arg[3] = (uint64_t)srcB;
	arg[4] = (uint64_t)dst;

	//create buffer
	CHECK_HSTR_RESULT(hStreams_app_create_buf(srcA,sizeof(float) * 4 * szGlobalWorkSize));	
	CHECK_HSTR_RESULT(hStreams_app_create_buf(srcB,sizeof(float) * 4 * szGlobalWorkSize));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(dst,sizeof(float) * szGlobalWorkSize));
	hStreams_ThreadSynchronize();

	long long time=0;
//for(int iteration=1;iteration<=11;iteration++)
{
	
	//kernel exe
	long long exe_Time=get_time();
	int header,tail;
	for(header=0;header<iNumElements; ){

		tail = header + task;
		if(tail>iNumElements - task){
			tail=iNumElements;
		}

		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&srcA[header*4], &srcA[header*4], sizeof(float) * 4 * (tail - header),stream, HSTR_SRC_TO_SINK, NULL));
		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&srcB[header*4], &srcB[header*4], sizeof(float) * 4 * (tail - header),stream, HSTR_SRC_TO_SINK, NULL));

		arg[0]=(uint64_t)header;
		arg[1]=(uint64_t)tail;

		CHECK_HSTR_RESULT(
				hStreams_EnqueueCompute(
										stream,
										"kernel_cpu",
										2,			  // scalar args
										3,			   // heap args
										arg,		   // arg array
										NULL,    // event
										NULL,		   // return value pointer
										0));		   // return value size
		
//		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&dst[header], &dst[header], sizeof(float) * task,stream, HSTR_SINK_TO_SRC, NULL));
		
		stream=(stream+1)%MAXLOGSTR;
		header=tail;

	}
	
	hStreams_ThreadSynchronize();
	exe_Time=get_time()-exe_Time;
//	printf("exe time = %15.12f s\n",(float) exe_Time / 1000000);
	time=time+exe_Time;	
}
	printf("%d\t%d\t%15.12f\n",places_per_domain, blocks, (float) time / 1000000);

	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(dst, dst, sizeof(float) * szGlobalWorkSize,0, HSTR_SINK_TO_SRC, NULL));
	hStreams_ThreadSynchronize();
/*
	// dump results
        FILE *fptr;
	int counter=0;
	fptr = fopen("result.txt", "w");	
	for(int i=0; i<szGlobalWorkSize; i=i+1){
        	fprintf(fptr, "%f ", dst[i]);
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
