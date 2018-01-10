/* $Id: main.c,v 1.1 2008/03/04 17:30:03 stratton Exp $ */

/*############################################################################*/

#include "main.h"
#include "lbm.h"
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>

#include <dtime.h>
#include <hStreams_source.h>
#include <hStreams_app_api.h>
#include <common/COIMacros_common.h>


static HSTR_OPTIONS hstreams_options;


/*############################################################################*/

static LBM_GridPtr srcGrid, dstGrid;
float * src_Dev;
float * dst_Dev;
#define SWITCH_CHAR '-'

/*############################################################################*/

int main( int argc , char** argv  ) {

  uint32_t places= 1;
  uint32_t streams= 1;
  int stream = 0;
  int blocks = 1;
  int *sub_Z;
  double tbegin = 0.0;

	int t;
	int b;
	int nTimeSteps = 2;

      while (argc){
      if (*argv[0] == SWITCH_CHAR){
          switch (*(argv[0]+1)){
            case 'n':
                nTimeSteps = (int)atol(argv[0]+2);
                break;
            case 'b':
                blocks = (int)atol(argv[0]+2);
                break;
            case 'p':
                places = (int)atol(argv[0]+2);
                break;
            default:
                break;
          }
      }
      argc -= 1;
      argv++;
    }
  sub_Z = (int *) malloc (sizeof(int) * blocks);
  for (b = 0; b < blocks - 1; b++)
    sub_Z[b] = SIZE_Z / blocks;
  sub_Z[blocks-1] = SIZE_Z - ( SIZE_Z / blocks ) * (blocks - 1);

  hStreams_GetCurrentOptions(&hstreams_options, sizeof(hstreams_options));
  hstreams_options.verbose = 0;
  hstreams_options.phys_domains_limit = 256;
  char *libNames[20] = {NULL, NULL};
  unsigned int libNameCnt = 0;
  libNames[libNameCnt++] = "kernel_cpu.so";
  hstreams_options.libNames = libNames;
  hstreams_options.libNameCnt = (uint16_t) libNameCnt;
  hStreams_SetOptions (&hstreams_options);

  int iret = hStreams_app_init (places, streams);
  if (iret != 0)
  {
    printf ("hstreams_app_init failed!\n");
    exit (-1);
  }

	MAIN_initialize();
        size_t margin = 2*SIZE_X*SIZE_Y*N_CELL_ENTRIES,
                     size   = sizeof( LBM_Grid ) + 2*margin*sizeof( float );
	size_t *sub_block = (size_t *) malloc (sizeof(size_t) * blocks);
	size_t *sub_size = (size_t *) malloc (sizeof(size_t) * blocks);
	for (b = 0; b < blocks; b++)
	{
	  sub_block[b] = sub_Z[b]*SIZE_Y*SIZE_X*N_CELL_ENTRIES;
	  sub_size[b] = (sub_block[b] + 2*margin) * sizeof (float);
	}

	src_Dev = (float *) malloc (size);
	dst_Dev = (float *) malloc (size);
	memcpy (src_Dev, *srcGrid-margin, size);
	memcpy (dst_Dev, *dstGrid-margin, size);

/*

	for( t = 1; t <= nTimeSteps; t++ ) {

		LBM_performStreamCollide( *srcGrid, *dstGrid );
		LBM_swapGrids( &srcGrid, &dstGrid );

	}
        LBM_storeVelocityField( *srcGrid);
*/

  float **src_Dev_Blocks = (float **) malloc ( blocks * sizeof (float *));
  float **dst_Dev_Blocks = (float **) malloc ( blocks * sizeof (float *));
  float *src_tmp = src_Dev + margin;
  float *dst_tmp = dst_Dev + margin;
  for (b = 0; b < blocks; b++)
  {
    src_Dev_Blocks[b] = (float *) malloc (sub_size[b]);
    dst_Dev_Blocks[b] = (float *) malloc (sub_size[b]);
    memcpy (src_Dev_Blocks[b] + margin, src_tmp, sub_block[b] * sizeof (float));
    memcpy (dst_Dev_Blocks[b] + margin, dst_tmp, sub_block[b] * sizeof (float));
    src_tmp += sub_block[b];
    dst_tmp += sub_block[b];
    CHECK_HSTR_RESULT (hStreams_app_create_buf (src_Dev_Blocks[b], sub_size[b]));
    CHECK_HSTR_RESULT (hStreams_app_create_buf (dst_Dev_Blocks[b], sub_size[b]));
  }
    hStreams_ThreadSynchronize ();

    uint64_t arg[4];

    arg[0] = (uint64_t) nTimeSteps;

  tbegin = dtimeGet ();
  for (b = 0; b < blocks; b++)
  {
    arg[1] = (uint64_t) sub_Z[b];
    arg[2] = (uint64_t) src_Dev_Blocks[b];
    arg[3] = (uint64_t) dst_Dev_Blocks[b];

  stream = b % places;
  {
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (src_Dev_Blocks[b], src_Dev_Blocks[b], sub_size[b], stream , HSTR_SRC_TO_SINK, NULL));
    CHECK_HSTR_RESULT (hStreams_app_xfer_memory (dst_Dev_Blocks[b], dst_Dev_Blocks[b], sub_size[b], stream , HSTR_SRC_TO_SINK, NULL));

    CHECK_HSTR_RESULT (hStreams_EnqueueCompute (stream, "kernel", 2, 2, arg, NULL, NULL, 0));

    //CHECK_HSTR_RESULT (hStreams_app_xfer_memory (src_Dev_Blocks[b], src_Dev_Blocks[b], sub_size[b], stream, HSTR_SINK_TO_SRC, NULL));
  }
  }
    hStreams_ThreadSynchronize ();
  printf("%d\t%d\t%lf\n", blocks, places, dtimeGet() - tbegin);

/*
  src_tmp = src_Dev + margin;
  for (b = 0; b < blocks; b++)
  {
    memcpy (src_tmp, src_Dev_Blocks[b] + margin, sub_block[b] * sizeof (float));
    src_tmp += sub_block[b];
  }

	src_Dev += margin;
        LBM_compareVelocityField( src_Dev);
	src_Dev -= margin;
*/
	hStreams_app_fini();
	MAIN_finalize ();
	free(sub_size);
	free(sub_block);
	free(sub_Z);
	for(b = 0; b < blocks; b++)
	{
	  free(src_Dev_Blocks[b]);
	  free(dst_Dev_Blocks[b]);
	}
	free(src_Dev_Blocks);
	free(dst_Dev_Blocks);
	
	return 0;
}

/*############################################################################*/

void MAIN_initialize() {
	LBM_allocateGrid( (float**) &srcGrid );
	LBM_allocateGrid( (float**) &dstGrid );

	LBM_initializeGrid( *srcGrid );
	LBM_initializeGrid( *dstGrid );

	srand(123);
	LBM_loadObstacle( *srcGrid);
	LBM_loadObstacle( *dstGrid);

	LBM_initializeSpecialCellsForLDC( *srcGrid );
	LBM_initializeSpecialCellsForLDC( *dstGrid );

}

/*############################################################################*/

void MAIN_finalize() {

	LBM_freeGrid( (float**) &srcGrid );
	LBM_freeGrid( (float**) &dstGrid );
	free( src_Dev );
	free( dst_Dev );
}

