#include <omp.h>									
#include <stdlib.h>									
#include <math.h>	
#include <omp.h>
#include <intel-coi/sink/COIPipeline_sink.h>

COINATIVELIBEXPORT
void  kernel_cpu1(	uint64_t arg0, 
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
	int header =(int)arg3;
	int tail =(int)arg4;
	float *h_Kernel =(float*)arg5;
	float *h_Buffer =(float*)arg6;
	float *h_Input =(float*)arg7;

	int x,y;

#pragma omp parallel for default(none) \
		private(x,y) shared(KERNEL_RADIUS,imageH,imageW,h_Buffer,h_Input,h_Kernel,header,tail)
	for(y = header; y < tail; y++)
        for(x = 0; x < imageW; x++){
            double sum = 0;
            for(int k = -KERNEL_RADIUS; k <= KERNEL_RADIUS; k++){
                int d = x + k;
                if(d >= 0 && d < imageW)
                    sum += h_Input[y * imageW + d] * h_Kernel[KERNEL_RADIUS - k];
            }
            h_Buffer[y * imageW + x] = (float)sum;
        }
	
}
