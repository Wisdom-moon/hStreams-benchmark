/***************************************************************************
 *cr
 *cr            (C) Copyright 2007 The Board of Trustees of the
 *cr                        University of Illinois
 *cr                         All Rights Reserved
 *cr
 ***************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include <unistd.h>
#include <sys/time.h>
#include <math.h>

#include "args.h"
#include "model.h"

int main( int argc, char **argv )
{
  struct pb_TimerSet timers;
  struct pb_Parameters *params;
  int rf, k, nbins, npd, npr;
  float *binb, w;
  long long *DD, *RRS, *DRS;
  size_t memsize;
  struct cartesian *data, *random;
  FILE *outfile;

  pb_InitializeTimerSet( &timers );
  params = pb_ReadParameters( &argc, argv );
  int logical_streams = 1;
  int task_blocks = 1;
  if (argc > 6)
  {
    logical_streams =atoi(argv[5]);
    task_blocks = atoi (argv[6]);
  }

  options args;
  parse_args( argc, argv, &args );
    
  pb_SwitchToTimer( &timers, pb_TimerID_COMPUTE );
  nbins = (int)floor(bins_per_dec * (log10(max_arcmin) - 
					 log10(min_arcmin)));
  memsize = (nbins+2)*sizeof(long long);
    
  // memory for bin boundaries
  binb = (float *)malloc((nbins+1)*sizeof(float));
  if (binb == NULL)
    {
      fprintf(stderr, "Unable to allocate memory\n");
      exit(-1);
    }
  for (k = 0; k < nbins+1; k++)
    {
      binb[k] = cos(pow(10, log10(min_arcmin) + 
			k*1.0/bins_per_dec) / 60.0*D2R);
    }
    
  // memory for DD
  DD = (long long*)malloc(memsize);
  if (DD == NULL)
    {
      fprintf(stderr, "Unable to allocate memory\n");
      exit(-1);
    }
  bzero(DD, memsize);
    
  // memory for RR
  RRS = (long long*)malloc(memsize);
  if (RRS == NULL)
    {
      fprintf(stderr, "Unable to allocate memory\n");
      exit(-1);
    }
  bzero(RRS, memsize);
    
  // memory for DR
  DRS = (long long*)malloc(memsize);
  if (DRS == NULL)
    {
      fprintf(stderr, "Unable to allocate memory\n");
      exit(-1);
    }
  bzero(DRS, memsize);
    
  // memory for input data
  data = (struct cartesian*)malloc
    (args.npoints* sizeof(struct cartesian));
  if (data == NULL)
    {
      fprintf(stderr, 
	      "Unable to allocate memory for % data points (#1)\n", 
	      args.npoints);
      return(0);
    }
    
  random = (struct cartesian*)malloc
    (args.npoints*sizeof(struct cartesian));
  if (random == NULL)
    {
      fprintf(stderr, 
	      "Unable to allocate memory for % data points (#2)\n", 
	      args.npoints);
      return(0);
    }

  //printf("Min distance: %f arcmin\n", min_arcmin);
  //printf("Max distance: %f arcmin\n", max_arcmin);
  //printf("Bins per dec: %i\n", bins_per_dec);
  //printf("Total bins  : %i\n", nbins);

  // read data file
  pb_SwitchToTimer( &timers, pb_TimerID_IO );
  npd = readdatafile(params->inpFiles[0], data, args.npoints);
  pb_SwitchToTimer( &timers, pb_TimerID_COMPUTE );
  if (npd != args.npoints)
    {
      fprintf(stderr, 
	      "Error: read %i data points out of %i\n", 
	      npd, args.npoints);
      return(0);
    }

  parboil_hstreams_init (logical_streams, "kernel.so");
  CHECK_HSTR_RESULT(hStreams_app_create_buf(data,args.npoints* sizeof(struct cartesian)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(random,args.npoints*sizeof(struct cartesian)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(DD,memsize));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(RRS,memsize));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(DRS,memsize));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(binb,(nbins+1)*sizeof(float)));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(binb, binb, (nbins+1)*sizeof(float),0, HSTR_SRC_TO_SINK, NULL));
  hStreams_ThreadSynchronize();
  // compute DD
  double tbegin = dtimeGet ();
  double tall = 0.0f;
  doCompute(data, npd, NULL, 0, 1, DD, nbins, binb, logical_streams, task_blocks);
  tall += (dtimeGet () - tbegin);

  // loop through random data files
  for (rf = 0; rf < args.random_count; rf++)
    {
      // read random file
      pb_SwitchToTimer( &timers, pb_TimerID_IO );
      npr = readdatafile(params->inpFiles[rf+1], random, args.npoints);
      pb_SwitchToTimer( &timers, pb_TimerID_COMPUTE );
      if (npr != args.npoints)
        {
	  fprintf(stderr, 
		  "Error: read %i random points out of %i in file %s\n", 
		  npr, args.npoints, params->inpFiles[rf+1]);
	  return(0);
        }

      // compute RR
      tbegin = dtimeGet ();
      doCompute(random, npr, NULL, 0, 1, RRS, nbins, binb, logical_streams, task_blocks);

      // compute DR
      doCompute(data, npd, random, npr, 0, DRS, nbins, binb, logical_streams, task_blocks);
      tall += (dtimeGet () - tbegin);
    }
  printf("%d\t%d\t%lf\n", task_blocks, logical_streams, tall);
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(DD, DD, memsize,0, HSTR_SINK_TO_SRC, NULL));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(RRS, RRS, memsize,0, HSTR_SINK_TO_SRC, NULL));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(DRS, DRS, memsize,0, HSTR_SINK_TO_SRC, NULL));
  hStreams_ThreadSynchronize();
  hStreams_app_fini();
  

  // compute and output results
  if ((outfile = fopen(params->outFile, "w")) == NULL)
    {
      fprintf(stderr, 
	      "Unable to open output file %s for writing, assuming stdout\n", 
	      params->outFile);
      outfile = stdout;
    }

  pb_SwitchToTimer( &timers, pb_TimerID_IO );
  for (k = 1; k < nbins+1; k++)
    {
      fprintf(outfile, "%d\n%d\n%d\n", (int)DD[k], (int)DRS[k], (int)RRS[k]);      
    }

  if(outfile != stdout)
    fclose(outfile);

  // free memory
  free(data);
  free(random);
  free(binb);
  free(DD);
  free(RRS);
  free(DRS);
  
  pb_SwitchToTimer( &timers, pb_TimerID_NONE );
  //pb_PrintTimerSet( &timers );
  pb_FreeParameters( params );
}

