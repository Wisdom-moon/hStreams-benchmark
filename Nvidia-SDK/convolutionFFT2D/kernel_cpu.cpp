#include <omp.h>									
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
					uint64_t arg7,
					uint64_t arg8,
					uint64_t arg9,
					uint64_t arg10)
{
	int header=(int)arg0;
	int tail=(int)arg1;
	int dataH=(int)arg2;
	int dataW=(int)arg3;
	int kernelH=(int)arg4;
	int kernelW=(int)arg5;
	int kernelY=(int)arg6;
	int kernelX=(int)arg7;
	float *h_ResultCPU=(float*)arg8;
	float *h_Data =(float*)arg9;
	float *h_Kernel =(float*)arg10;

	int x,y;
	double sum=0;

	for(y = header; y < tail; y++)
#pragma omp parallel for default(none) \
					private(x,sum) shared(y, header,tail,dataH,dataW,kernelH,kernelW,kernelX,kernelY,h_ResultCPU,h_Data,h_Kernel)
          for(x = 0; x < dataW; x++){
            sum = 0;

            for(int ky = -(kernelH - kernelY - 1); ky <= kernelY; ky++)
                for(int kx = -(kernelW - kernelX - 1); kx <= kernelX; kx++){
                    int dy = y + ky;
                    int dx = x + kx;
                    if(dy < 0) dy = 0;
                    if(dx < 0) dx = 0;
                    if(dy >= dataH) dy = dataH - 1;
                    if(dx >= dataW) dx = dataW - 1;

                    sum += h_Data[dy * dataW + dx] * h_Kernel[(kernelY - ky) * kernelW + (kernelX - kx)];
                }

            h_ResultCPU[y * dataW + x] = (float)sum;
        }

	
}
