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

export LOG_NAME=SF
./Tune.py ./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/SF/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/SF/bfs.out --
export LOG_NAME=UT
./Tune.py ./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/UT/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/UT/bfs.out --
export LOG_NAME=NY
./Tune.py ./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/NY/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/NY/bfs.out --
export LOG_NAME=1M
./Tune.py ./bfs -i /home/zp/benchmarks/hstreams/parboil/datasets/bfs/1M/input/graph_input.dat -o /home/zp/benchmarks/hstreams/parboil/benchmarks/bfs/run/1M/bfs.out --
