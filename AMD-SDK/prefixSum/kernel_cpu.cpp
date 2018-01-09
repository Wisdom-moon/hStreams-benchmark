#include <omp.h>
#include <stdio.h>
#include <stdlib.h>									
#include <math.h>	
#include <omp.h>
#include <assert.h>
#include <intel-coi/sink/COIPipeline_sink.h>

COINATIVELIBEXPORT
void  kernel_cpu(	uint64_t arg0, 
					uint64_t arg1,
					uint64_t arg2,
					uint64_t arg3,
					uint64_t arg4,
					uint64_t arg5,
					uint64_t arg6,
					uint64_t arg7)
{

	int length=(int)arg0;
	int test=(int)arg1;
	int header=(int)arg2;
	int tail=(int)arg3;
	int block=(int)arg4;
	int *input=(int*)arg5;
	//int *output =(int*)arg6;
	int *temp=(int*)arg6;
	int *out=(int*)arg7;
	
	#pragma omp parallel for \
		shared(temp,input,header,tail,block)
	for(int j=1;j<=length;j++){
		temp[block*(length+1)*test+j]=input[header+j-1];
	}

	for(int h=1;h<=test;h++){
		#pragma omp parallel for \
			shared(temp,length,h)
		for(int j=1;j<=(length/(2<<(h-1)));j++){
			temp[block*(length+1)*test+h*(length+1)+j]=temp[block*(length+1)*test+(h-1)*(length+1)+(2*j-1)]+temp[block*(length+1)*test+(h-1)*(length+1)+(2*j)];
		}
	}

	for(int h=test;h>=0;h--){
		#pragma omp parallel for \
			shared(out,temp,h,length)
		for(int j=1;j<=((int)(length/pow(2,h)));j++){
			if(j==1){
				out[block*(length+1)*test+h*(length+1)+1]=temp[block*(length+1)*test+h*(length+1)+1];
			}else if(j%2==0){
				out[block*(length+1)*test+h*(length+1)+j]=out[block*(length+1)*test+(h+1)*(length+1)+j/2];
			}else if(j%2==1){
				out[block*(length+1)*test+h*(length+1)+j]=out[block*(length+1)*test+(h+1)*(length+1)+(j-1)/2]+temp[block*(length+1)*test+h*(length+1)+j];
			}
		}
	}
}
