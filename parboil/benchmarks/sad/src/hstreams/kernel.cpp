#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <omp.h>
#include <assert.h>
#include <intel-coi/sink/COIPipeline_sink.h>

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

COINATIVELIBEXPORT void
sad4_kernel (uint64_t arg0,
	uint64_t arg1,
	uint64_t arg2,
	uint64_t arg3,
	uint64_t arg4,
	uint64_t arg5,
	uint64_t arg6
)
{
  int start_h = (int) arg0;
  int end_h = (int) arg1;
  int mb_width = (int) arg2;
  int mb_height= (int) arg3;
  unsigned short *blk_sad = (unsigned short*) arg4;
  unsigned short *frame = (unsigned short*) arg5;
  unsigned short *ref = (unsigned short*) arg6;
  

  int mb_x, mb_y, bk_x, bk_y;
  unsigned int frame_yoff;

  /* Go to the starting offset in blk_sad */
  blk_sad += SAD_TYPE_7_IX(mb_width * mb_height);

  /* For each block */
#pragma omp parallel for
  for (mb_y = start_h, frame_yoff = start_h * 256 * mb_width;
       mb_y < end_h;
       mb_y++, frame_yoff += 256 * mb_width)
    {
      for (mb_x = 0; mb_x < mb_width; mb_x++)
	{
	  sad4_one_macroblock
	    (blk_sad + (mb_y * mb_width + mb_x) * (SAD_TYPE_7_CT * MAX_POS_PADDED),
	     frame + frame_yoff + mb_x * 16,
	     ref,
	     mb_y * 16,
	     mb_x * 16,
	     mb_width,
	     mb_height);
	}
    }
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
		? create_padded_row((short*)ref, abs_y, abs_x, height, width)
		: (short *)((short*)ref + abs_y * width + abs_x);

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
