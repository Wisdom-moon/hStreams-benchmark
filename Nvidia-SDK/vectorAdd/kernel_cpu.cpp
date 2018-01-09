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
					uint64_t arg4)
{

	int header=(int)arg0;
	int tail=(int)arg1;
	float *srcA=(float*)arg2;
	float *srcB =(float*)arg3;
	float *dst =(float*)arg4;

	int i;
#pragma omp parallel for default(none) \
			private(i) shared(srcA,srcB,dst,header,tail)
    for (i = header; i < tail; i++) 
    {
        dst[i] = srcA[i] + srcB[i]; 
    }
    
	
}
