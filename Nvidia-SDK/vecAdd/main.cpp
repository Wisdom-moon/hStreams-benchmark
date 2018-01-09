#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <omp.h>
#include <dtime.h>

#include <hStreams_source.h>
#include <hStreams_app_api.h>
#include <common/COIMacros_common.h>

static HSTR_OPTIONS hstreams_options;

#define SWITCH_CHAR '-'
#define ITERATION 3

void FillVec (float * vec, int length)
{
  int i;
  const float fScale = 1.0f / (float) RAND_MAX;
  for (i = 0; i < length; i++)
  {
    vec[i] = fScale * rand();
  }
}


int main( int argc, char **argv)
{
  uint32_t places_per_domain = 1;
  uint32_t streams_per_place = 1;
  int stream = 0;
  int MAXLOGSTR = places_per_domain;
  int task = 1;
  int i;
  int max_iter = 655;
  int length = 8888;
  int threads = 1;
  double tbegin = 0.0, ta;
  int *index, *len;

  argc --;
  argv++;
  while (argc)
  {
    if (*argv[0] == SWITCH_CHAR)
    {
      switch (*(argv[0]+1))
      {
        case 'p':
	  places_per_domain= (int)atol(argv[0]+2);
          MAXLOGSTR=places_per_domain;
	  break;
	case 't':
	  task = (int) atol(argv[0]+2);
	  break;
	case 'i':
	  max_iter = (int) atol(argv[0]+2);
	  break;
	case 'n':
	  length = (int) atol(argv[0]+2);
	  break;
	case 'r':
	  threads = (int) atol(argv[0]+2);
	  break;
	default:
	  break;

      }
    }
    argc --;
    argv++;
  }

  hStreams_GetCurrentOptions(&hstreams_options, sizeof(hstreams_options));
  hstreams_options.verbose = 0;
  hstreams_options.phys_domains_limit = 256;
  char *libNames[20] = {NULL, NULL};
  unsigned int libNameCnt = 0;
  libNames[libNameCnt++] = "kernel_cpu.so";
  hstreams_options.libNames = libNames;
  hstreams_options.libNameCnt = (uint16_t) libNameCnt;
  hStreams_SetOptions (&hstreams_options);

  int iret = hStreams_app_init (places_per_domain, streams_per_place);
  if (iret != 0)
  {
    printf ("hstreams_app_init failed!\n");
    exit (-1);
  }
  
  float a = 0.5f;

  float *vecA = (float *) malloc (sizeof(float) * length);
  float *vecB = (float *) malloc (sizeof(float) * length);
  float *vecC = (float *) malloc (sizeof(float) * length);

  FillVec (vecA, length);
  FillVec (vecB, length);

  uint64_t arg[6];
  arg[0] = (uint64_t) threads;
  arg[1] = (uint64_t) max_iter;
  arg[2] = (uint64_t) length;
  arg[3] = (uint64_t) a;
  arg[4] = (uint64_t) vecA;
  arg[5] = (uint64_t) vecB;

  
  int turn = 0;
  int iter, test;

  turn = length / task;
  if ((length % task) != 0)
    turn++;
  index = (int *) malloc (sizeof (int) * turn);
  len = (int *) malloc (sizeof (int) * turn);
  i = 0;
  for (test = 0; test < length; )
  {
    index[i] = test;
    test += task;
    if (test > length)
      test = length;
    len[i] = test - index[i];
    i++;
  }
  HSTR_EVENT *eventxef = new HSTR_EVENT[turn];

  CHECK_HSTR_RESULT (hStreams_app_create_buf (vecA, sizeof(float) * length));
  CHECK_HSTR_RESULT (hStreams_app_create_buf (vecB, sizeof(float) * length));
  hStreams_ThreadSynchronize ();
  ta = 0;

  for (iter = 0; iter < ITERATION; iter++)
  {

    tbegin = dtimeGet ();
    stream = 0;
    test = 0;

/*      for ( i = 0; i < (max_iter-1); i++)
      {
        CHECK_HSTR_RESULT (hStreams_app_xfer_memory (&vecA[index[test]], &vecA[index[test]], sizeof(float) *len[test], stream , HSTR_SRC_TO_SINK, NULL));
        CHECK_HSTR_RESULT (hStreams_app_xfer_memory (&vecB[index[test]], &vecB[index[test]], sizeof(float) *len[test], stream , HSTR_SRC_TO_SINK, NULL));
      }
*/
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (&vecB[index[test]], &vecB[index[test]], sizeof(float) *len[test], stream , HSTR_SRC_TO_SINK, NULL));
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (&vecA[index[test]], &vecA[index[test]], sizeof(float) *len[test], stream , HSTR_SRC_TO_SINK, &eventxef[test]));

    do {

      arg[2] = (uint64_t)len[test];
      arg[4] = (uint64_t) &vecA[index[test]];
      arg[5] = (uint64_t) &vecB[index[test]];
  
      hStreams_app_event_wait(1, &eventxef[test]);
      CHECK_HSTR_RESULT (hStreams_EnqueueCompute (stream, "kernel_cpu", 4, 2, arg, NULL, NULL, 0));
      
      test++;
      stream = (stream + 1) % MAXLOGSTR;

      if (test >= turn)
        break;

/*      for ( i = 0; i < (max_iter-1); i++)
      {
        CHECK_HSTR_RESULT (hStreams_app_xfer_memory (&vecA[index[test]], &vecA[index[test]], sizeof(float) *len[test], stream , HSTR_SRC_TO_SINK, NULL));
        CHECK_HSTR_RESULT (hStreams_app_xfer_memory (&vecB[index[test]], &vecB[index[test]], sizeof(float) *len[test], stream , HSTR_SRC_TO_SINK, NULL));
      }
*/
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (&vecB[index[test]], &vecB[index[test]], sizeof(float) *len[test], stream , HSTR_SRC_TO_SINK, NULL));
      CHECK_HSTR_RESULT (hStreams_app_xfer_memory (&vecA[index[test]], &vecA[index[test]], sizeof(float) *len[test], stream , HSTR_SRC_TO_SINK, &eventxef[test]));

    }while (1);

  hStreams_ThreadSynchronize ();
  CHECK_HSTR_RESULT (hStreams_app_xfer_memory (vecB, vecB, sizeof(float) * length, 0, HSTR_SINK_TO_SRC, NULL));
  hStreams_ThreadSynchronize ();

  ta += dtimeGet() - tbegin;
  }

  printf ("length = %d, threads = %d, stream = %d, task = %d, time = %f\n", length, threads, places_per_domain, task, ta / ITERATION);

  hStreams_app_fini ();
  return 0;
}
