/***************************************************************************
 *cr
 *cr            (C) Copyright 2007 The Board of Trustees of the
 *cr                        University of Illinois
 *cr                         All Rights Reserved
 *cr
 ***************************************************************************/


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

inline
void 
ComputePhiMagCPU(int numK, 
                 float* phiR, float* phiI, float* phiMag) {
  int indexK = 0;
  #pragma omp parallel for
  for (indexK = 0; indexK < numK; indexK++) {
    float real = phiR[indexK];
    float imag = phiI[indexK];
    phiMag[indexK] = real*real + imag*imag;
  }
}

inline
void
ComputeQCPU(int numK, int numX,
            struct kValues *kVals,
            float* x, float* y, float* z,
            float *Qr, float *Qi, 
	    int logical_streams,
	    int task_blocks) {

  parboil_hstreams_init (logical_streams, "kernel.so");
  task_blocks = numX < task_blocks ? numX : task_blocks;


  uint64_t args[9];
  int start_x = 0;
  int end_x;
  int sub_blocks = numX / task_blocks;
  int remain_x = numX % task_blocks;

  CHECK_HSTR_RESULT(hStreams_app_create_buf(kVals,numK *sizeof(struct kValues)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(x,numX *sizeof(float)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(y,numX *sizeof(float)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(z,numX *sizeof(float)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(Qr,numX *sizeof(float)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(Qi,numX *sizeof(float)));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(kVals, kVals,numK * sizeof (struct kValues) ,0 , HSTR_SRC_TO_SINK, NULL));

  args[2] = (uint64_t) numK;
  args[3] = (uint64_t) kVals;
  args[4] = (uint64_t) x;
  args[5] = (uint64_t) y;
  args[6] = (uint64_t) z;
  args[7] = (uint64_t) Qr;
  args[8] = (uint64_t) Qi;
  hStreams_ThreadSynchronize();
printf("Max blocks = %d\n", numX);

  double tbegin = dtimeGet ();
  for (int i = 0; i < task_blocks; i++)
  {
    args[0] = (uint64_t)start_x;
    end_x = start_x + sub_blocks;
    if (i < remain_x)
      end_x ++;
    args[1] = (uint64_t) end_x;
tbegin = dtimeGet ();
    CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&x[start_x], &x[start_x],(end_x - start_x ) * sizeof (float) ,i % logical_streams, HSTR_SRC_TO_SINK, NULL));
    CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&y[start_x], &y[start_x],(end_x - start_x ) * sizeof (float) ,i % logical_streams, HSTR_SRC_TO_SINK, NULL));
    CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&z[start_x], &z[start_x],(end_x - start_x ) * sizeof (float) ,i % logical_streams, HSTR_SRC_TO_SINK, NULL));
  hStreams_ThreadSynchronize();
printf("Transfer = %lf\n", dtimeGet() - tbegin);
tbegin = dtimeGet ();
    CHECK_HSTR_RESULT(hStreams_EnqueueCompute(
                                i % logical_streams,
                                "ComputeQ_kernel",
                                3,
                                6,
                                args,
                                NULL,NULL,0));
  hStreams_ThreadSynchronize();
printf("Exe= %lf\n", dtimeGet() - tbegin);
    start_x = end_x;
  }
  hStreams_ThreadSynchronize();
  printf("%d\t%d\t%lf\n", task_blocks, logical_streams, dtimeGet() - tbegin);
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(Qr, Qr, numX * sizeof (float),0, HSTR_SINK_TO_SRC, NULL));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(Qi, Qi, numX * sizeof (float),0, HSTR_SINK_TO_SRC, NULL));
  hStreams_ThreadSynchronize();
  hStreams_app_fini();
}

void createDataStructsCPU(int numK, int numX, float** phiMag,
	 float** Qr, float** Qi)
{
  *phiMag = (float* ) memalign(16, numK * sizeof(float));
  *Qr = (float*) memalign(16, numX * sizeof (float));
  memset((void *)*Qr, 0, numX * sizeof(float));
  *Qi = (float*) memalign(16, numX * sizeof (float));
  memset((void *)*Qi, 0, numX * sizeof(float));
}
