#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <omp.h>
#include <assert.h>
#include <intel-coi/sink/COIPipeline_sink.h>

typedef enum memory_order {
    memory_order_relaxed, memory_order_consume, memory_order_acquire,
    memory_order_release, memory_order_acq_rel, memory_order_seq_cst
} memory_order;

typedef struct Atom_t {
    float x, y, z, q;
} Atom;

typedef struct Vec3_t {
    float x, y, z;
} Vec3;

typedef struct LatticeDim_t {
    int nx, ny, nz;
    Vec3 lo;
    float h;
} LatticeDim;


COINATIVELIBEXPORT void
compute_cutoff_potential_lattice_kernel( uint64_t arg0,
		uint64_t arg1,
		uint64_t arg2,
		uint64_t arg3,
		uint64_t arg4,
		uint64_t arg5,
		uint64_t arg6,
		uint64_t arg7
)
{
  
  int cell_start = (int )arg0;
  int cell_end = (int) arg1;
  float cutoff = (float) arg2;
  LatticeDim * dim= (LatticeDim *)arg3;
  float * lattice = (float *) arg4;
  Atom * atom = (Atom *)arg5;
  int * first = (int *) arg6;
  int * next = (int *) arg7;
  

  float s;
  int nx = dim->nx;
  int ny = dim->ny;
  int nz = dim->nz;
  float xlo = dim->lo.x;
  float ylo = dim->lo.y;
  float zlo = dim->lo.z;
  float gridspacing = dim->h;
  const float inv_gridspacing = 1.f / gridspacing;
  const int radius = (int) ceilf(cutoff * inv_gridspacing) - 1;
  const float a2 = cutoff * cutoff;
  const float inv_a2 = 1.f / a2;

  int n;
  int i, j, k;
  int ia, ib, ic;
  int ja, jb, jc;
  int ka, kb, kc;
  int index;
  float x, y, z, q;
  int koff, jkoff;
  float dx, dy, dz;
  float dz2, dydz2, r2;
  float e;
  float xstart, ystart;
  int gindex;
  float *pg;

#pragma omp parallel for private (n, q, x, y, z, ic, jc, kc, ia, ib, ja, jb, ka, kb, \
                                  xstart, ystart, dz, k, koff, dz2, j, dy, jkoff,    \
                                  dydz2, dx, index, pg, i, r2, s, e                  \
                                 )
  for (gindex = cell_start;  gindex < cell_end;  gindex++) {
    for (n = first[gindex];  n != -1;  n = next[n]) {
      x = atom[n].x - xlo;
      y = atom[n].y - ylo;
      z = atom[n].z - zlo;
      q = atom[n].q;

      /* find closest grid point with position less than or equal to atom */
      ic = (int) (x * inv_gridspacing);
      jc = (int) (y * inv_gridspacing);
      kc = (int) (z * inv_gridspacing);

      /* find extent of surrounding box of grid points */
      ia = ic - radius;
      ib = ic + radius + 1;
      ja = jc - radius;
      jb = jc + radius + 1;
      ka = kc - radius;
      kb = kc + radius + 1;

      /* trim box edges so that they are within grid point lattice */
      if (ia < 0)   ia = 0;
      if (ib >= nx) ib = nx-1;
      if (ja < 0)   ja = 0;
      if (jb >= ny) jb = ny-1;
      if (ka < 0)   ka = 0;
      if (kb >= nz) kb = nz-1;

      /* loop over surrounding grid points */
      xstart = ia*gridspacing - x;
      ystart = ja*gridspacing - y;
      dz = ka*gridspacing - z;
      for (k = ka;  k <= kb;  k++, dz += gridspacing) {
        koff = k*ny;
        dz2 = dz*dz;
        dy = ystart;
        for (j = ja;  j <= jb;  j++, dy += gridspacing) {
          jkoff = (koff + j)*nx;
          dydz2 = dy*dy + dz2;
#ifdef CHECK_CYLINDER_CPU
          if (dydz2 >= a2) continue;
#endif

          dx = xstart;
          index = jkoff + ia;
          pg = lattice + index;

          for (i = ia;  i <= ib;  i++, pg++, dx += gridspacing) {
            r2 = dx*dx + dydz2;
            s = (1.f - r2 * inv_a2) * (1.f - r2 * inv_a2);
            e = q * (1/sqrtf(r2)) * s;
            s = (r2 < a2 ? e : 0);  /* LOOP VECTORIZED!! */
#pragma omp atomic
	    *pg += s;
          }
        }
      } /* end loop over surrounding grid points */

    } /* end loop over atoms in a gridcell */
  } /* end loop over gridcells */

}
