#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <omp.h>
#include <assert.h>
#include <intel-coi/sink/COIPipeline_sink.h>

#define PI   3.1415926535897932384626433832795029f
#define PIx2 6.2831853071795864769252867665590058f

#define MIN(X,Y) ((X) < (Y) ? (X) : (Y))
#define K_ELEMS_PER_GRID 2048

struct kValues {
  float Kx;
  float Ky;
  float Kz;
  float PhiMag;
};

COINATIVELIBEXPORT void
ComputeQ_kernel (uint64_t arg0,
	uint64_t arg1,
	uint64_t arg2,
	uint64_t arg3,
	uint64_t arg4,
	uint64_t arg5,
	uint64_t arg6,
	uint64_t arg7,
	uint64_t arg8
)
{
  int start_x = (int) arg0;
  int end_x = (int) arg1;
  int numK = (int) arg2;
  struct kValues * kVals = (struct kValues *) arg3;
  float * x = (float *) arg4;
  float * y = (float *) arg5;
  float * z = (float *) arg6;
  float * Qr = (float *) arg7;
  float * Qi = (float *) arg8;

  float expArg;
  float cosArg;
  float sinArg;

  int indexK, indexX;

#pragma omp parallel for
  for (indexX = start_x; indexX < end_x; indexX++) {
    for (indexK = 0; indexK < numK; indexK++) {
      expArg = PIx2 * (kVals[indexK].Kx * x[indexX] +
                       kVals[indexK].Ky * y[indexX] +
                       kVals[indexK].Kz * z[indexX]);

      cosArg = cosf(expArg);
      sinArg = sinf(expArg);

      float phi = kVals[indexK].PhiMag;
      Qr[indexX] += phi * cosArg;
      Qi[indexX] += phi * sinArg;
    }
  }
}
