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
	int tail=(int)arg1;
	int width=(int)arg2;
	float *M=(float*)arg3;
	float *V =(float*)arg4;
	float *W=(float*)arg5;
	int i;
#pragma omp parallel for default(none) \
			private(i) shared(M,V,W,header,tail,width)
    for (i = header; i < tail; ++i) {
        double sum = 0;
        for (int j = 0; j < width; ++j) {
            double a = M[i * width + j];
            double b = V[j];
            sum += a * b;
        }
        W[i] = (float)sum;
    }
	
}
