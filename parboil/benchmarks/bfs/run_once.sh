# Copyright 2012 Intel Corporation.
#
# This file is subject to the Intel Sample Source Code License. A copy
# of the Intel Sample Source Code License is included.

#scatter affinity set on host
export KMP_AFFINITY=scatter

#for MKL AO run
export MIC_ENV_PREFIX=MIC
export MIC_KMP_AFFINITY=balanced

. ../../common/setEnv.sh ./build/hstreams_default/

cd ./build/hstreams_default/host

./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/NY/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/NY/bfs.out -- 1 1
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/NY/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/NY/bfs.out -- 1 1
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/NY/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/NY/bfs.out -- 1 1
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/NY/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/NY/bfs.out -- 2 2
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/NY/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/NY/bfs.out -- 2 2
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/NY/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/NY/bfs.out -- 2 2
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/NY/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/NY/bfs.out -- 17 85
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/NY/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/NY/bfs.out -- 17 85
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/NY/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/NY/bfs.out -- 17 85
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/NY/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/NY/bfs.out -- 4 16
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/NY/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/NY/bfs.out -- 4 16
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/NY/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/NY/bfs.out -- 4 16
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/UT/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/UT/bfs.out -- 1 1
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/UT/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/UT/bfs.out -- 1 1
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/UT/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/UT/bfs.out -- 1 1
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/UT/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/UT/bfs.out -- 2 2
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/UT/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/UT/bfs.out -- 2 2
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/UT/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/UT/bfs.out -- 2 2
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/UT/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/UT/bfs.out -- 17 85 
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/UT/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/UT/bfs.out -- 17 85 
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/UT/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/UT/bfs.out -- 17 85 
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/UT/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/UT/bfs.out -- 4 16
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/UT/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/UT/bfs.out -- 4 16
./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/UT/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/UT/bfs.out -- 4 16
