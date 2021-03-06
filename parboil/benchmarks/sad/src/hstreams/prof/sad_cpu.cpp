/***************************************************************************
 *cr
 *cr            (C) Copyright 2007 The Board of Trustees of the
 *cr                        University of Illinois
 *cr                         All Rights Reserved
 *cr
 ***************************************************************************/

/* The optimized CPU-only version of the code, for performance measurement. */

#include <stdlib.h>
#include <parboil_hstreams.h>
#include "sad.h"


static short line[16];

static void sad4_one_macroblock(unsigned short *blk_sad,
				unsigned short *frame,
				unsigned short *ref,
				int org_y,
				int org_x,
				int mb_width,
				int mb_height);

static short *
create_padded_row (short *ref, int y, int x, int height, int width);

void sad4_cpu(unsigned short *blk_sad,
	      unsigned short *frame,
	      unsigned short *ref,
	      int mb_width,
	      int mb_height,
	      int img_width,
	      int img_height,
	      int logical_streams,
	      int task_blocks)
{
  int image_width_macroblocks = img_width / 16;
  int image_height_macroblocks = img_height / 16;
  int image_size_macroblocks = image_width_macroblocks * image_height_macroblocks;
  parboil_hstreams_init (logical_streams, "kernel.so");
  CHECK_HSTR_RESULT(hStreams_app_create_buf(blk_sad,41 * MAX_POS_PADDED * image_size_macroblocks * sizeof(short)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(frame,img_width*img_height*sizeof(short)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(ref,img_width*img_height*sizeof(short)));

  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(ref, ref,img_width*img_height*sizeof(short),0 , HSTR_SRC_TO_SINK, NULL));

  task_blocks = mb_height < task_blocks ? mb_height : task_blocks;
  int sub_blocks = mb_height / task_blocks;
  int remain_h = mb_height % task_blocks;
  int start_h = 0;
  int end_h;

  uint64_t args[7];
  args[2] = (uint64_t) mb_width;
  args[3] = (uint64_t) mb_height;
  args[4] = (uint64_t) blk_sad;
  args[5] = (uint64_t) frame;
  args[6] = (uint64_t) ref;

printf("Max block = %d, mb_width = %d\n", mb_height, mb_width);
  hStreams_ThreadSynchronize();
  double tbegin = dtimeGet ();
  for (int i = 0; i < task_blocks; i++)
  {
    args[0] = (uint64_t) start_h;
    end_h = start_h + sub_blocks;
    if ( i < remain_h)
      end_h ++;
    args[1] = (uint64_t) end_h;
tbegin = dtimeGet ();
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(&frame[start_h * 256 * mb_width], &frame[start_h * 256 * mb_width],((end_h - start_h - 1)*256*mb_width + 16 * (mb_width-1) + 15*16*mb_width + 16)*sizeof(short),i % logical_streams , HSTR_SRC_TO_SINK, NULL));
  hStreams_ThreadSynchronize();
printf("Transfer = %lf\n", dtimeGet () - tbegin);
tbegin = dtimeGet ();
    CHECK_HSTR_RESULT(hStreams_EnqueueCompute(
                                i % logical_streams,
                                "sad4_kernel",
                                4,
                                3,
                                args,
                                NULL,NULL,0));
  hStreams_ThreadSynchronize();
printf("Exe = %lf\n", dtimeGet () - tbegin);
    start_h = end_h;

  }
  hStreams_ThreadSynchronize();
  printf("%d\t%d\t%lf\n", task_blocks, logical_streams, dtimeGet() - tbegin);
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(blk_sad, blk_sad,41 * MAX_POS_PADDED * image_size_macroblocks * sizeof(short) ,0, HSTR_SINK_TO_SRC, NULL));
  hStreams_ThreadSynchronize();
  hStreams_app_fini();
}

void
sad4_one_macroblock(unsigned short *macroblock_sad,
		    unsigned short *frame,
		    unsigned short *ref,
		    int frame_y,
		    int frame_x,
		    int mb_width,
		    int mb_height)
{
  unsigned short frame_mb[256];	/* current macroblock in frame */
  int pos_x, pos_y;
  int blky, pixy;
  int width = mb_width * 16;
  int max_width = width - 17;
  int height = mb_height * 16;
  int max_height = height - 17;
  int range_partly_outside;
  int pos;			/* search position */

  /* Make a local copy of frame */
  {
    int x, y;
    for (y = 0; y < 16; y++)
      for (x = 0; x < 16; x++)
	frame_mb[16*y+x] = frame[width * y + x];
  }

  if ((frame_x >= SEARCH_RANGE) && (frame_x <= width - SEARCH_RANGE - 17) &&
      (frame_y >= SEARCH_RANGE) && (frame_y <= height - SEARCH_RANGE - 17))
    range_partly_outside = 0;
  else
    range_partly_outside = 1;

  /* Each search position */
  pos = 0;
  for (pos_y = -SEARCH_RANGE; pos_y <= SEARCH_RANGE; pos_y++) {
    for (pos_x = -SEARCH_RANGE; pos_x <= SEARCH_RANGE; pos_x++, pos++) {
      int y;
      int abs_x, abs_y;
      int do_bounds_check;
      short *curptr = (short *)frame_mb;
      short *refptr;
      unsigned short *sad_line = macroblock_sad;

      abs_y = frame_y + pos_y;
      abs_x = frame_x + pos_x;

      do_bounds_check = range_partly_outside &&
	!(abs_y >= 0 && abs_y <= max_height &&
	  abs_x >= 0 && abs_x <= max_width);

      for (blky = 0; blky < 4; blky++)
	{
	  int sad0 = 0, sad1 = 0, sad2 = 0, sad3 = 0;

	  for (y = 0; y < 4; y++)
	    {
	      refptr = do_bounds_check
		? create_padded_row((short *)ref, abs_y, abs_x, height, width)
		: (short *)((short *)ref + abs_y * width + abs_x);

	      abs_y++;

	      sad0 += abs (*refptr++ - *curptr++);
	      sad0 += abs (*refptr++ - *curptr++);
	      sad0 += abs (*refptr++ - *curptr++);
	      sad0 += abs (*refptr++ - *curptr++);
	      sad1 += abs (*refptr++ - *curptr++);
	      sad1 += abs (*refptr++ - *curptr++);
	      sad1 += abs (*refptr++ - *curptr++);
	      sad1 += abs (*refptr++ - *curptr++);
	      sad2 += abs (*refptr++ - *curptr++);
	      sad2 += abs (*refptr++ - *curptr++);
	      sad2 += abs (*refptr++ - *curptr++);
	      sad2 += abs (*refptr++ - *curptr++);
	      sad3 += abs (*refptr++ - *curptr++);
	      sad3 += abs (*refptr++ - *curptr++);
	      sad3 += abs (*refptr++ - *curptr++);
	      sad3 += abs (*refptr++ - *curptr++);
	    }

	  sad_line[pos] = sad0;
	  sad_line[MAX_POS_PADDED + pos] = sad1;
	  sad_line[MAX_POS_PADDED*2 + pos] = sad2;
	  sad_line[MAX_POS_PADDED*3 + pos] = sad3;

	  sad_line += MAX_POS_PADDED*4;
	}
    }
  }
}

/* Return a row of 16 pixels starting at offset (x, y).  The row may lie
 * partly outside the image, in which case an appropriate row will be
 * constructed in 'line' and returned.  Otherwise, a reference to the
 * image is returned. */
static short *
create_padded_row (short *ref, int y, int x, int height, int width)
{
  int i, maxx;
  short *row;

  if (y < 0) y = 0;
  else if (y >= height) y = height - 1;

  row = ref + y * width;

  if ((x >= 0) && (x <= width - 16)) return row + x;

  i = 0;
  /* Pad left edge of image */
  for (; (x < 0) && (i < 16); x++, i++)
    line[i] = row[0];

  /* Copy row from image */
  for (; (x < width) && (i < 16); x++, i++)
    line[i] = row[x];

  /* Pad right edge of image */
  for (; i < 16; x++, i++)
    line[i] = row[width - 1];

  return line;
}

void larger_sads(unsigned short *sads, int mbs)
{
  int macroblock;
  int block_x, block_y;
  unsigned short *x, *y;	/* inputs to vector addition */
  unsigned short *z;		/* output of vector addition */
  int count;

#if 0
#define ADD_VECTORS() \
  for (count = 0; count < MAX_POS; count++) *z++ = *x++ + *y++
#else
#define ADD_VECTORS() \
  for (count = 0; count < (MAX_POS+1)/2; count++,z += 2, x += 2, y += 2) \
    *(unsigned int *)z = *(unsigned int *)x + *(unsigned int *)y
#endif

  for (macroblock = 0; macroblock < mbs; macroblock++)
    {
      /* Block type 6 */
      for (block_y = 0; block_y < 2; block_y++)
	for (block_x = 0; block_x < 4; block_x++)
	  {
	    x = sads + SAD_TYPE_7_IX(mbs) +
	      macroblock * SAD_TYPE_7_CT * MAX_POS_PADDED +
	      (8 * block_y + block_x) * MAX_POS_PADDED;
	    y = x + 4 * MAX_POS_PADDED;
	    z = sads + SAD_TYPE_6_IX(mbs) +
	      macroblock * SAD_TYPE_6_CT * MAX_POS_PADDED +
	      (4 * block_y + block_x) * MAX_POS_PADDED;

	    ADD_VECTORS();
	  }

      /* Block type 5 */
      for (block_y = 0; block_y < 4; block_y++)
	for (block_x = 0; block_x < 2; block_x++)
	  {
	    x = sads + SAD_TYPE_7_IX(mbs) +
	      macroblock * SAD_TYPE_7_CT * MAX_POS_PADDED +
	      (4 * block_y + 2 * block_x) * MAX_POS_PADDED;
	    y = x + MAX_POS_PADDED;
	    z = sads + SAD_TYPE_5_IX(mbs) +
	      macroblock * SAD_TYPE_6_CT * MAX_POS_PADDED +
	      (2 * block_y + block_x) * MAX_POS_PADDED;

	    ADD_VECTORS();
	  }

      /* Block type 4 */
      for (block_y = 0; block_y < 2; block_y++)
	for (block_x = 0; block_x < 2; block_x++)
	  {
	    x = sads + SAD_TYPE_5_IX(mbs) +
	      macroblock * SAD_TYPE_5_CT * MAX_POS_PADDED +
	      (4 * block_y + block_x) * MAX_POS_PADDED;
	    y = x + 2 * MAX_POS_PADDED;
	    z = sads + SAD_TYPE_4_IX(mbs) +
	      macroblock * SAD_TYPE_4_CT * MAX_POS_PADDED +
	      (2 * block_y + block_x) * MAX_POS_PADDED;
	    
	    ADD_VECTORS();
	  }
      
      /* Block type 3 */
      x = sads + SAD_TYPE_4_IX(mbs) +
	macroblock * SAD_TYPE_4_CT * MAX_POS_PADDED;
      y = x + 2 * MAX_POS_PADDED;
      z = sads + SAD_TYPE_3_IX(mbs) +
	macroblock * SAD_TYPE_3_CT * MAX_POS_PADDED;
      
      ADD_VECTORS();

      x = sads + SAD_TYPE_4_IX(mbs) +
	macroblock * SAD_TYPE_4_CT * MAX_POS_PADDED +
	MAX_POS_PADDED;
      y = x + 2 * MAX_POS_PADDED;
      z = sads + SAD_TYPE_3_IX(mbs) +
	macroblock * SAD_TYPE_3_CT * MAX_POS_PADDED +
	MAX_POS_PADDED;

      ADD_VECTORS();

      /* Block type 2 */
      x = sads + SAD_TYPE_4_IX(mbs) +
	macroblock * SAD_TYPE_4_CT * MAX_POS_PADDED;
      y = x + MAX_POS_PADDED;
      z = sads + SAD_TYPE_2_IX(mbs) +
	macroblock * SAD_TYPE_2_CT * MAX_POS_PADDED;

      ADD_VECTORS();

      x = sads + SAD_TYPE_4_IX(mbs) +
	macroblock * SAD_TYPE_4_CT * MAX_POS_PADDED +
	2 * MAX_POS_PADDED;
      y = x + MAX_POS_PADDED;
      z = sads + SAD_TYPE_2_IX(mbs) +
	macroblock * SAD_TYPE_2_CT * MAX_POS_PADDED +
	MAX_POS_PADDED;

      ADD_VECTORS();

      /* Block type 1 */
      x = sads + SAD_TYPE_2_IX(mbs) +
	macroblock * SAD_TYPE_2_CT * MAX_POS_PADDED;
      y = x + MAX_POS_PADDED;
      z = sads + SAD_TYPE_1_IX(mbs) +
	macroblock * SAD_TYPE_1_CT * MAX_POS_PADDED;

      ADD_VECTORS();
    }
}
