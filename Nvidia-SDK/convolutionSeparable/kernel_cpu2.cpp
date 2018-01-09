#include <omp.h>									
#include <stdlib.h>									
#include <math.h>									
#include <intel-coi/sink/COIPipeline_sink.h>

COINATIVELIBEXPORT
void  kernel_cpu2(	uint64_t arg0, 
					uint64_t arg1,
					uint64_t arg2,
					uint64_t arg3,
					uint64_t arg4,
					uint64_t arg5,
					uint64_t arg6,
					uint64_t arg7)
{

	int imageH=(int)arg0;
	int imageW=(int)arg1;
	int KERNEL_RADIUS=(int)arg2;
	int header=(int)arg3;
	int tail=(int)arg4;
	float *h_Kernel =(float*)arg5;
	float *h_Buffer =(float*)arg6;
	float *h_OutputCPU =(float*)arg7;

	int x,y;

	for(x = header; x < tail; x++)
#pragma omp parallel for default(none) \
		private(y) shared(x,KERNEL_RADIUS,imageH,imageW,h_Buffer,h_OutputCPU,h_Kernel,header,tail)
        for(y = 0; y < imageH; y++){
            double sum = 0;
            for(int k = -KERNEL_RADIUS; k <= KERNEL_RADIUS; k++){
                int d = y + k;
                if(d >= 0 && d < imageH)
                    sum += h_Buffer[d * imageW + x] * h_Kernel[KERNEL_RADIUS - k];
            }
            h_OutputCPU[y * imageW + x] = (float)sum;
        }
	
}
