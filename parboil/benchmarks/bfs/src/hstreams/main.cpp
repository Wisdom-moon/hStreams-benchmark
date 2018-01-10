/***************************************************************************
 *cr
 *cr            (C) Copyright 2007 The Board of Trustees of the
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
*/
#include "config.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <parboil.h>
#include <parboil_hstreams.h>
#include <iostream>

#define NUM_SM 30//the number of Streaming Multiprocessors; may change in the future archs 
#define NUM_SP 16//8//the number of Streaming processors within each SM; may change in the future 
	//architectures
#define EXP 4//3// EXP = log(NUM_SP), assuming NUM_SP is still power of 2 in the future architecture
	//using EXP and shifting can speed up division operation 
#define MOD_OP 8//7 // This variable is also related with NUM_SP; may change in the future architecture;
	//using MOD_OP and "bitwise and" can speed up mod operation

int no_of_nodes; //the number of nodes in the graph
int edge_list_size;//the number of edges in the graph
FILE *fp;

//typedef int2 Node;
//typedef int2 Edge;

//Somehow "cudaMemset" does not work. So I use cudaMemcpy of constant variables for initialization
const int h_top = 1;
const int zero = 0;

void runCPU(int argc, char** argv);
void runGPU(int argc, char** argv);
////////////////////////////////////////////////////////////////////
//the cpu version of bfs for speed comparison
//the text book version ("Introduction to Algorithms")
////////////////////////////////////////////////////////////////////
void  BFS_CPU( Node * h_graph_nodes,Edge * h_graph_edges,
	int * color, int * h_cost, int source,
	int logical_streams, int task_blocks){

	int cur_blocks = 0;
	int block_grays = 0;
	int * in_index = (int *) calloc ( no_of_nodes, sizeof (int));
	int * out_index = (int *) calloc ( no_of_nodes, sizeof (int));
	int * num_grays = (int *) malloc (sizeof (int));;
	int *gray_index = (int *) malloc ((task_blocks + 1)* sizeof (int));
	gray_index = gray_index + 1;
	gray_index[-1] = 0;
	int i = 0;
	int iters = 0;
	color[source] = GRAY;
	in_index[0] = source;
	*num_grays = 1;
	double tbegin = 0.0f;

	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_graph_nodes,sizeof(Node)*no_of_nodes));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_graph_edges,sizeof(Edge)*edge_list_size));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(color,no_of_nodes * sizeof (int)));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(h_cost,no_of_nodes * sizeof (int)));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(in_index,no_of_nodes * sizeof (int)));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(out_index,no_of_nodes * sizeof(int)));
	CHECK_HSTR_RESULT(hStreams_app_create_buf(num_grays,sizeof(int)));

	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_graph_nodes, h_graph_nodes, sizeof(Node)*no_of_nodes,0, HSTR_SRC_TO_SINK, NULL));
	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_graph_edges, h_graph_edges, sizeof(Edge)*edge_list_size,0, HSTR_SRC_TO_SINK, NULL));
	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(color,color ,no_of_nodes * sizeof(int),0, HSTR_SRC_TO_SINK, NULL));
	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_cost,h_cost,no_of_nodes * sizeof(int),0, HSTR_SRC_TO_SINK, NULL));
	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(in_index,in_index,no_of_nodes * sizeof(int),0, HSTR_SRC_TO_SINK, NULL));

	uint64_t args[10];
	args[3] = (uint64_t) h_graph_nodes;
 	args[4] = (uint64_t) h_graph_edges;
 	args[5] = (uint64_t) color;
 	args[6] = (uint64_t) h_cost;
 	args[7] = (uint64_t) in_index;
 	args[8] = (uint64_t) out_index;

	tbegin = dtimeGet ();

	while(*num_grays > 0){
	  cur_blocks = *num_grays > task_blocks ? task_blocks : *num_grays;
	  block_grays = *num_grays / cur_blocks;
	  for ( i = 0; i < *num_grays % cur_blocks; i++)
	    gray_index[i] =  gray_index[i-1] + (block_grays + 1); 
	  for ( ; i< cur_blocks; i++)
	    gray_index[i] =  gray_index[i-1] +  block_grays; 
	  
	  *num_grays = 0;
	  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(num_grays, num_grays, sizeof(int),0, HSTR_SRC_TO_SINK, NULL));
	  hStreams_ThreadSynchronize();
	  for (i = 0; i < cur_blocks; i++)
	  {
	  args[0] = (uint64_t) gray_index[i-1];
	  args[1] = (uint64_t) gray_index[i];
	  args[2] = (uint64_t) iters;
	  args[9] = (uint64_t) num_grays;
          CHECK_HSTR_RESULT(hStreams_EnqueueCompute(
				i % logical_streams,
				"BFS_kernel",
				3,
				7,
				args,
				NULL,NULL,0));
	  }
	  hStreams_ThreadSynchronize();
	  CHECK_HSTR_RESULT(hStreams_app_xfer_memory(num_grays, num_grays, sizeof(int),0, HSTR_SINK_TO_SRC, NULL));
	  hStreams_ThreadSynchronize();
	  iters++;
	}
	printf("%d\t%d\t%lf\n", task_blocks, logical_streams, dtimeGet() - tbegin);
	CHECK_HSTR_RESULT(hStreams_app_xfer_memory(h_cost, h_cost, sizeof(int)*no_of_nodes ,0, HSTR_SINK_TO_SRC, NULL));
	hStreams_ThreadSynchronize();
	free (num_grays);
	free (in_index);
	gray_index = gray_index - 1;
	free (gray_index);
	free (out_index);
	hStreams_app_fini();
}
////////////////////////////////////////////////////////////////////////////////
// Main Program
////////////////////////////////////////////////////////////////////////////////
int main( int argc, char** argv) 
{
	no_of_nodes=0;
	edge_list_size=0;
	runCPU(argc,argv);
//	if( cutCheckCmdLineFlag(argc, (const char**)argv, "device") )
//		cutilDeviceInit(argc, argv);
//	else
		//cudaSetDevice( cutGetMaxGflopsDeviceId() );
//		cudaSetDevice( 1);


	//CUT_EXIT(argc, argv);
}
///////////////////////////////
//FUNCTION: only run CPU version 
////////////////////////////////////////////
void runCPU( int argc, char** argv) 
{

    struct pb_Parameters *params;
    struct pb_TimerSet timers;

    pb_InitializeTimerSet(&timers);
    params = pb_ReadParameters(&argc, argv);
    if ((params->inpFiles[0] == NULL) || (params->inpFiles[1] != NULL))
    {
        fprintf(stderr, "Expecting one input filename\n");
        exit(-1);
    }

    int logical_streams = 1;
    int task_blocks = 1;

    if (argc >= 3)
    {
      logical_streams = atoi(argv[1]);
      task_blocks = atoi(argv[2]);
    }
    parboil_hstreams_init (logical_streams, "kernel.so");

    pb_SwitchToTimer(&timers, pb_TimerID_IO);
	//printf("Reading File\n");
	//Read in Graph from a file
	fp = fopen(params->inpFiles[0],"r");
	if(!fp)
	{
		printf("Error Reading graph file\n");
		return;
	}

	int source;

	fscanf(fp,"%d",&no_of_nodes);
	// allocate host memory
	Node* h_graph_nodes = (Node*) malloc(sizeof(Node)*no_of_nodes);
	int *color = (int*) malloc(sizeof(int)*no_of_nodes);
	int start, edgeno;   
	// initalize the memory
	for( unsigned int i = 0; i < no_of_nodes; i++) 
	{
		fscanf(fp,"%d %d",&start,&edgeno);
		h_graph_nodes[i].x = start;
		h_graph_nodes[i].y = edgeno;
		color[i]=WHITE;
	}
	//read the source node from the file
	fscanf(fp,"%d",&source);
	fscanf(fp,"%d",&edge_list_size);
	int id,cost;
	Edge* h_graph_edges = (Edge*) malloc(sizeof(Edge)*edge_list_size);
	for(int i=0; i < edge_list_size ; i++)
	{
		fscanf(fp,"%d",&id);
		fscanf(fp,"%d",&cost);
		h_graph_edges[i].x = id;
		h_graph_edges[i].y = cost;
	}
	if(fp)
		fclose(fp);    

	//printf("Read File\n");

	// allocate mem for the result on host side
	int* h_cost = (int*) malloc( sizeof(int)*no_of_nodes);
	for(int i = 0; i < no_of_nodes; i++){
		h_cost[i] = INF;
	}
	h_cost[source] = 0;
	//printf("start cpu version\n");
	unsigned int cpu_timer = 0;
    pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
	BFS_CPU( h_graph_nodes, h_graph_edges, color, h_cost,  source,
		 logical_streams, task_blocks);
    pb_SwitchToTimer(&timers, pb_TimerID_IO);
    if(params->outFile!=NULL)
    {
        //printf("Result stored in %s\n", params->outFile);
        FILE *fp = fopen(params->outFile,"w");
        fprintf(fp,"%d\n", no_of_nodes);
    	for(int i=0;i<no_of_nodes;i++)
    		fprintf(fp,"%d %d\n",i,h_cost[i]);
    	fclose(fp);
    }


    pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
	// cleanup memory
	free( h_graph_nodes);
	free( h_graph_edges);
	free( color);
	free( h_cost);
    pb_SwitchToTimer(&timers, pb_TimerID_NONE);
    //pb_PrintTimerSet(&timers);
    pb_FreeParameters(params);
}
///////////////////////////////
//FUNCTION:only run GPU version 
////////////////////////////////////////////
