/***************************************************************************
 *cr
 *cr            (C) Copyright 2008-2010 The Board of Trustees of the
 *cr                        University of Illinois
 *cr                         All Rights Reserved
 *cr
 ***************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "atom.h"
#include "cutoff.h"
#include <parboil_hstreams.h>

#undef DEBUG_PASS_RATE
#define CHECK_CYLINDER_CPU

#define CELLEN      4.f
#define INV_CELLEN  (1.f/CELLEN)

extern int cpu_compute_cutoff_potential_lattice(
    Lattice *lattice,                  /* the lattice */
    float cutoff,                      /* cutoff distance */
    Atoms *atoms,                 /* array of atoms */
    int logical_streams,
    int task_blocks
    )
{
  int nx = lattice->dim.nx;
  int ny = lattice->dim.ny;
  int nz = lattice->dim.nz;
  float xlo = lattice->dim.lo.x;
  float ylo = lattice->dim.lo.y;
  float zlo = lattice->dim.lo.z;
  float gridspacing = lattice->dim.h;
  int natoms = atoms->size;
  Atom *atom = atoms->atoms;

  int lattice_size = ((nx * ny * nz) + 7) & ~7;

  const float a2 = cutoff * cutoff;
  const float inv_a2 = 1.f / a2;
  float s;
  const float inv_gridspacing = 1.f / gridspacing;
  const int radius = (int) ceilf(cutoff * inv_gridspacing) - 1;
    /* lattice point radius about each atom */

  int n;
  int i, j, k;

  int gindex;
  int ncell, nxcell, nycell, nzcell;
  int *first, *next;
  float inv_cellen = INV_CELLEN;
  Vec3 minext, maxext;		/* Extent of atom bounding box */
  float xmin, ymin, zmin;
  float xmax, ymax, zmax;


  /* find min and max extent */
  get_atom_extent(&minext, &maxext, atoms);

  /* number of cells in each dimension */
  nxcell = (int) floorf((maxext.x-minext.x) * inv_cellen) + 1;
  nycell = (int) floorf((maxext.y-minext.y) * inv_cellen) + 1;
  nzcell = (int) floorf((maxext.z-minext.z) * inv_cellen) + 1;
  ncell = nxcell * nycell * nzcell;

  /* allocate for cursor link list implementation */
  first = (int *) malloc(ncell * sizeof(int));
  for (gindex = 0;  gindex < ncell;  gindex++) {
    first[gindex] = -1;
  }
  next = (int *) malloc(natoms * sizeof(int));
  for (n = 0;  n < natoms;  n++) {
    next[n] = -1;
  }

  /* geometric hashing */
  for (n = 0;  n < natoms;  n++) {
    if (0==atom[n].q) continue;  /* skip any non-contributing atoms */
    i = (int) floorf((atom[n].x - minext.x) * inv_cellen);
    j = (int) floorf((atom[n].y - minext.y) * inv_cellen);
    k = (int) floorf((atom[n].z - minext.z) * inv_cellen);
    gindex = (k*nycell + j)*nxcell + i;
    next[n] = first[gindex];
    first[gindex] = n;
  }

//For hstreams
  parboil_hstreams_init (logical_streams, "kernel.so");

  task_blocks = ncell < task_blocks ? ncell : task_blocks;
  int sub_blocks = ncell / task_blocks;
  int remain_cells = ncell % task_blocks;
  int cur_cell = 0;
  LatticeDim *p_dim = &(lattice->dim);
printf("Max block = %d\n", ncell);

  CHECK_HSTR_RESULT(hStreams_app_create_buf(p_dim,sizeof (LatticeDim)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(lattice->lattice,sizeof(float)*lattice_size));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(atoms->atoms,atoms->size * sizeof (Atom)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(first,ncell * sizeof (int)));
  CHECK_HSTR_RESULT(hStreams_app_create_buf(next,natoms * sizeof (int)));
 
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(p_dim,p_dim,sizeof(LatticeDim),0, HSTR_SRC_TO_SINK, NULL));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(lattice->lattice,lattice->lattice,lattice_size * sizeof(float),0, HSTR_SRC_TO_SINK, NULL));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(atoms->atoms,atoms->atoms,atoms->size * sizeof(Atom),0, HSTR_SRC_TO_SINK, NULL));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(first,first,ncell * sizeof(int),0, HSTR_SRC_TO_SINK, NULL));
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(next,next,natoms * sizeof(int),0, HSTR_SRC_TO_SINK, NULL));
  hStreams_ThreadSynchronize();

  uint64_t args[8];
  args[2] = (uint64_t) cutoff;
  args[3] = (uint64_t) p_dim;
  args[4] = (uint64_t) lattice->lattice;
  args[5] = (uint64_t) atoms->atoms;
  args[6] = (uint64_t) first;
  args[7] = (uint64_t) next;

  double tbegin = dtimeGet ();
  for ( n = 0; n < remain_cells; n++)
  {
    args[0] = (uint64_t) cur_cell;
    cur_cell += (sub_blocks + 1);
    args[1] = (uint64_t) cur_cell;
    CHECK_HSTR_RESULT(hStreams_EnqueueCompute(
                                n % logical_streams,
                                "compute_cutoff_potential_lattice_kernel",
                                3,
                                5,
                                args,
                                NULL,NULL,0));
  }
  for ( ; n < task_blocks; n++)
  {
    args[0] = (uint64_t) cur_cell;
    cur_cell += sub_blocks;
    args[1] = (uint64_t) cur_cell;
    CHECK_HSTR_RESULT(hStreams_EnqueueCompute(
                                n % logical_streams,
                                "compute_cutoff_potential_lattice_kernel",
                                3,
                                5,
                                args,
                                NULL,NULL,0));
  }
  hStreams_ThreadSynchronize();
  printf("%d\t%d\t%lf\n", task_blocks, logical_streams, dtimeGet() - tbegin);
  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(lattice->lattice, lattice->lattice, sizeof(float)*lattice_size,0, HSTR_SINK_TO_SRC, NULL));
  hStreams_ThreadSynchronize();

  /* free memory */
  free(next);
  free(first);

  hStreams_app_fini();

  /* For debugging: print the number of times that the test passed/failed */

  return 0;
}
