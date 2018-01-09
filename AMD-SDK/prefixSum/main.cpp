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

int main(	int argc, 
		char *argv [])
{
	int *output,*input,*temp,*out;
	int length=(1<<24);

	uint32_t places_per_domain = 1;
  	uint32_t logical_streams_per_place = 1; // keep it simple
  	int stream = 0;
	int MAXLOGSTR = places_per_domain;
	int task=1;
	int blocks;
	int i,header,tail,test1,test2,test=4;

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
				blocks =(int)atol(argv[0]+2);
				break;
			case 'n':
				test1 =(int)atol(argv[0]+2);
				length = (1<<test1);
				break;
	                default:
	                    break;
	            }
	        }
	        argc -= 1;
	        argv++;
	    }
//	printf("partition=%d\ttask=%d\n",places_per_domain,task);

//	places_per_domain=4;
//	MAXLOGSTR=places_per_domain;
//	task=(2<<18);
	//printf("%d\n",task);
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

	//output = (int *)malloc(length * sizeof(int));
	task = length / blocks;
	input = (int  *)malloc(length * sizeof(int));
	temp=(int*)calloc(blocks*test*(task+1),sizeof(int));
	out=(int*)calloc(blocks*test*(task+1),sizeof(int));

	for(int i=0;i<length;i++){
		input[i]=i+1;
	}
/*	
	srand(2009);
	
	for(int i = 0; i < length; i++)
		input[i] = rand() & 0xFFU;
*/	
	
	uint64_t arg[8];
	arg[0] = (uint64_t)task;
	arg[1] = (uint64_t)test;
	arg[5] = (uint64_t)input;
	//arg[6] = (uint64_t)output;
	arg[6] = (uint64_t)temp;
	arg[7] = (uint64_t)out;

	//create buffer
	CHECK_HSTR_RESULT(hStreams_app_create_buf(input,length * sizeof(int)));	
	//CHECK_HSTR_RESULT(hStreams_app_create_buf(output,length * sizeof(int)));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(out,blocks*test*(task+1) * sizeof(int)));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(temp,blocks*test*(task+1) * sizeof(int)));
	hStreams_ThreadSynchronize();

	//total time
//	long long total_Time=get_time();
	long long time=0;
//for(int iteration=1;iteration<=11;iteration++)
{
	
	//kernel exe
	long long exe_Time=get_time();
	int counter=0;
	for(i=0;i<length; ){

		header = i;
		tail = header + task;
		if(tail>length - task){
			tail=length;
		}

		CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&input[header], &input[header], (tail - header) * sizeof(int),stream, HSTR_SRC_TO_SINK, NULL));

		arg[2]=(uint64_t)header;
		arg[3]=(uint64_t)tail;
		arg[4]=(uint64_t)counter;

		CHECK_HSTR_RESULT(
				hStreams_EnqueueCompute(
										stream,
										"kernel_cpu",
										5,			  // scalar args
										3,			   // heap args
										arg,		   // arg array
										NULL,    // event
										NULL,		   // return value pointer
										0));		   // return value size

		//CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&out[counter*test*(task+1)], &out[counter*test*(task+1)], test*(task+1) * sizeof(int),stream, HSTR_SINK_TO_SRC, NULL));

		stream = (stream+1)%MAXLOGSTR;
		i=tail;		
		counter++;
		
	}
	
	hStreams_ThreadSynchronize();
	exe_Time=get_time()-exe_Time;
//	printf("exe time = %15.12f s\n",(float) exe_Time / 1000000);
	time=time+exe_Time;
}
	printf("%d\t%d\t%15.12f\n",places_per_domain, blocks, (float) time / 1000000);	
	
	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(out, out, blocks*test*(task+1) * sizeof(int),0, HSTR_SINK_TO_SRC, NULL));
	hStreams_ThreadSynchronize();

	for(int i=1;i<blocks;i++){
		for(int j=1;j<=task;j++)
			out[i*test*(task+1)+j]+=out[(i-1)*test*(task+1)+task];
	}

//	total_Time = get_time()-total_Time;
//	printf("total time = %15.12f s\n",(float) total_Time / 1000000);

	
/*
	// dump results
        FILE *fptr;
	counter=0;
	fptr = fopen("result.txt", "w");	
	for(int i=0; i<blocks; i=i+1){
		for(int j=1;j<=task;j++){
	        	fprintf(fptr, "%d ", out[i*test*(task+1)+j]);
			counter++;
			if(counter==10){
				fprintf(fptr,"\n");
				counter=0;
			}
		}
	}
	fclose(fptr);
*/
	free(input);
	free(out);
	free(temp);
	
	hStreams_app_fini();
	return 0.0;

}
