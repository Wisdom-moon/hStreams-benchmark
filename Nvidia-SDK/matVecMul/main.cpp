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

#define MAX_HEIGHT 100000

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


int main(	int argc, char *argv []) {

	uint32_t places_per_domain = 1;
  	uint32_t logical_streams_per_place = 1; // keep it simple
  	int stream = 0;
	int MAXLOGSTR = places_per_domain;
	int task=1;
	int blocks;
	int i;

	int width = 1100;				// Matrix width
	int height; 					// Matrix height

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
	                    task = (int)atol(argv[0]+2);
	                    break;
			case 'h':
				height=(int)atol(argv[0]+2);
				break;
			case 'w':
				width=(int)atol(argv[0]+2);
				break;

	                default:
	                    break;
	            }
	        }
	        argc -= 1;
	        argv++;
	    }
	
	blocks = task;
	task = height / task;
//	printf("partitions=%d\ttask=%d\theight=%d\twidth=%d\n",places_per_domain,task,height,width);

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

	float *M,*V,*W, *Ref;
	M=(float*)malloc(height*width*sizeof(float));
	V=(float*)malloc(width*sizeof(float));
	W=(float*)malloc(height*sizeof(float));
	Ref=(float*)malloc(height*sizeof(float));

	shrFillArray(M, height*width);
    	shrFillArray(V, width);

	//create buffer
	CHECK_HSTR_RESULT(hStreams_app_create_buf(M,height*width*sizeof(float)));	
	CHECK_HSTR_RESULT(hStreams_app_create_buf(V,width*sizeof(float)));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(W,height*sizeof(float)));

	//xfer data
	long long xfer_Time=get_time();
	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(V, V, width*sizeof(float),0, HSTR_SRC_TO_SINK, NULL));
	hStreams_ThreadSynchronize();
	
	xfer_Time=get_time()-xfer_Time;
//	printf("h2d time2 = %15.12f s\n",(float) xfer_Time / 1000000);
	
	//kernel exe
//	long long exe_Time=get_time();
	
	uint64_t arg[6];
	arg[2] = (uint64_t)width;
	arg[3] = (uint64_t)M;
	arg[4] = (uint64_t)V;
	arg[5] = (uint64_t)W;

	int header,tail;

	long long time=0;	
//for(int iteration=1;iteration<=3;iteration++)
{

	long long exe_Time=get_time();
	for(header=0;header<height; ){

		tail=header+task;
		if(tail>=height - task){
			tail=height;
		}

		arg[0]=(uint64_t)header;
		arg[1]=(uint64_t)tail;

		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&M[header*width], &M[header*width], (tail - header) *width*sizeof(float),stream, HSTR_SRC_TO_SINK, NULL));
	
		CHECK_HSTR_RESULT(
				hStreams_EnqueueCompute(
										stream,
										"kernel_cpu",
										3,			  // scalar args
										3,			   // heap args
										arg,		   // arg array
										NULL,    // event
										NULL,		   // return value pointer
										0));		   // return value size

		stream=(stream+1)%MAXLOGSTR;
		header=tail;

	}
	hStreams_ThreadSynchronize();
	exe_Time=get_time()-exe_Time;
//	printf("total time(h2d+exe) = %15.12f s\n",(float) exe_Time / 1000000);
	time=time+exe_Time;
}
	printf("%d\t%d\t%15.12f\n",places_per_domain, blocks, (float) time / 1000000);
	long long xfer_back_Time=get_time();
	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(W, W, height*sizeof(float),0, HSTR_SINK_TO_SRC, NULL));
	hStreams_ThreadSynchronize();
	
	xfer_back_Time=get_time()-xfer_back_Time;
//	printf("d2h time = %15.12f s\n",(float) xfer_back_Time / 1000000);
/*
	// dump results
        FILE *fptr;
	int counter=0;
	fptr = fopen("result.txt", "w");	
	for(int i=0; i<height; i=i+1){
        	fprintf(fptr, "%f ", W[i]);
		counter++;
		if(counter==10){
			fprintf(fptr,"\n");
			counter=0;
		}
	}
	fclose(fptr);
*/
/*
    for (i = 0; i < height; ++i) {
        double sum = 0;
        for (int j = 0; j < width; ++j) {
            double a = M[i * width + j];
            double b = V[j];
            sum += a * b;
        }
        Ref[i] = (float)sum;
    }

    double sumDelta = 0;
    double sumRef   = 0;
    for(i = 0; i < height; i++){
        sumDelta += fabs(Ref[i]- W[i]);
        sumRef += fabs(Ref[i]);
        printf("Ref[%d] = %E, W[%d] = %E\n", i, Ref[i], i, W[i]);
    }
    printf("sumDelta = %E, sumRef = %E\n", sumDelta, sumRef);
    if(sumRef >1E-5)
        printf("L1 norm: %E\n", sumDelta / sumRef);
    else
        printf("Avg. diff: %E\n", sumDelta / (double)height);
*/

	free(W);
	free(Ref);
	free(M);
	free(V);

	hStreams_app_fini();
	return 0.0;

}
