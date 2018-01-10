/***************************************************************************
 *cr
 *cr            (C) Copyright 2010 The Board of Trustees of the
 *cr                        University of Illinois
 *cr                         All Rights Reserved
 *cr
 ***************************************************************************/
/*
  Implementing Breadth first search on CUDA using algorithm given in DAC'10
  paper "An Effective GPU Implementation of Breadth-First Search"

  Copyright (c) 2010 University of Illinois at Urbana-Champaign. 
  All rights reserved.

  Permission to use, copy, modify and distribute this software and its documentation for 
  educational purpose is hereby granted without fee, provided that the above copyright 
  notice and this permission notice appear in all copies of this software and that you do 
  not sell the software.

  THE SOFTWARE IS PROVIDED "AS IS" AND WITHOUT WARRANTY OF ANY KIND,EXPRESS, IMPLIED OR 
  OTHERWISE.

  Author: Lijiuan Luo (lluo3@uiuc.edu)
  Revised for Parboil 2.5 Benchmark Suite by: Geng Daniel Liu (gengliu2@illinois.edu)
*/
/**********
Define colors for BFS
1) the definition of White, gray and black comes from the text book "Introduction to Algorithms"
2) For path search problems, people may choose to use different colors to record the found paths.
Therefore we reserve numbers (0-16677216) for this purpose. Only nodes with colors bigger than
UP_LIMIT are free to visit 
3) We define two gray shades to differentiate between the new frontier nodes and the old frontier nodes that
 have not been marked BLACK 
*************/

#include "config.h"
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

/*****************************************************************************
This is the  most general version of BFS kernel, i.e. no assumption about #block in the grid  
\param q1: the array to hold the current frontier
\param q2: the array to hold the new frontier
\param g_graph_nodes: the nodes in the input graph
\param g_graph_edges: the edges i nthe input graph
\param g_color: the colors of nodes
\param g_cost: the costs of nodes
\param no_of_nodes: the number of nodes in the current frontier
\param tail: pointer to the location of the tail of the new frontier. *tail is the size of the new frontier 
\param gray_shade: the shade of the gray in current BFS propagation. See GRAY0, GRAY1 macro definitions for more details
\param k: the level of current propagation in the BFS tree. k= 0 for the first propagation.
***********************************************************************/
COINATIVELIBEXPORT void
BFS_kernel(uint64_t arg0,
	uint64_t arg1,
	uint64_t arg2,
	uint64_t arg3,
	uint64_t arg4,
	uint64_t arg5,
	uint64_t arg6,
	uint64_t arg7,
	uint64_t arg8,
	uint64_t arg9
)

{
  int start = (int )arg0;
  int end = (int) arg1;
  int iters = (int) arg2;
  Node * h_graph_nodes = (Node *)arg3;
  Edge * h_graph_edges = (Edge *)arg4;
  int * color = (int *) arg5;
  int * h_cost = (int *) arg6;
  int *in_index;
  int *out_index;
  if (iters % 2 == 0)
  {
    in_index = (int *)arg7;
    out_index = (int *)arg8;
  }
  else
  {
    in_index = (int *)arg8;
    out_index = (int *)arg7;
  }
  int *num = (int *)arg9;

/*
#pragma omp parallel for default(none) \
	private(start, end, in_index, h_graph_nodes, h_graph_edges) shared(color, h_cost, out_index, num)
*/
#pragma omp parallel for shared(color, h_cost, out_index, num)
  for ( int j = start; j < end; j++)
  {
  int index;
    index = in_index[j];
    for(int i=h_graph_nodes[index].x; 
      i<(h_graph_nodes[index].y + h_graph_nodes[index].x); i++)
    {
      int id = h_graph_edges[i].x;
      if(color[id] == WHITE){
        h_cost[id]=h_cost[index]+1;
        out_index[__atomic_fetch_add_explicit(num,1,memory_order_seq_cst)] = id;
        color[id] = GRAY;
      }
    }
    color[index] = BLACK;
  }

}
