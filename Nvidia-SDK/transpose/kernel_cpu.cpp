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
	int size_x=(int)arg2;
	int size_y=(int)arg3;
	float *h_idata=(float*)arg4;
	float *h_odata =(float*)arg5;

	unsigned int y;

	for( y = header; y < tail; ++y) 
    	{
    	#pragma omp parallel for default(none) \
			private(y) shared(size_x,size_y,header,tail,h_idata,h_odata)
	        for( unsigned int x = 0; x < size_x; ++x) 
	        {
	            h_odata[(x * size_y) + y] = h_idata[(y * size_x) + x];
	        }
    	} 
	
}
