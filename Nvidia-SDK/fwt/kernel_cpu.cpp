#include <omp.h>									
#include <stdlib.h>									
#include <math.h>	
#include <omp.h>
#include <intel-coi/sink/COIPipeline_sink.h>

COINATIVELIBEXPORT
void  kernel_cpu(	uint64_t arg0, 
					uint64_t arg1,
					uint64_t arg2,
					uint64_t arg3,
					uint64_t arg4,
					uint64_t arg5)
{

	int header=(int)arg0;
	int tail =(int)arg1;
	int log2Kernel=(int)arg2;
	float *h_ResultCPU=(float*)arg3;
	float *h_Data =(float*)arg4;
	float *h_Kernel =(float*)arg5;

    	const int kernelN = 1 << log2Kernel;

	int i,j;
	double sum;

#pragma omp parallel for default(none) \
			private(i,j,sum) shared(kernelN,header,tail,h_ResultCPU,h_Data,h_Kernel)
	for(i = header; i < tail; i++){
	    sum = 0;
	    for(j = 0; j < kernelN; j++)
	        sum += h_Data[i ^ j] * h_Kernel[j];

	    h_ResultCPU[i] = (float)sum;
	}
	
}
