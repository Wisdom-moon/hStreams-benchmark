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

./sad -i /home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/reference.bin,/home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/frame.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/sad/run/default/out.bin --  1 1
./sad -i /home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/reference.bin,/home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/frame.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/sad/run/default/out.bin --  2 8
./sad -i /home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/reference.bin,/home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/frame.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/sad/run/default/out.bin --  2 8
./sad -i /home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/reference.bin,/home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/frame.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/sad/run/default/out.bin --  2 8
./sad -i /home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/reference.bin,/home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/frame.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/sad/run/default/out.bin --  2 8
./sad -i /home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/reference.bin,/home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/frame.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/sad/run/default/out.bin --  2 8
./sad -i /home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/reference.bin,/home/zp/benchmarks/hstreams/parboil/datasets/sad/default/input/frame.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/sad/run/default/out.bin --  2 8
#./sad -i /home/zp/benchmarks/hstreams/parboil/datasets/sad/large/input/reference.bin,/home/zp/benchmarks/hstreams/parboil/datasets/sad/large/input/frame.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/sad/run/large/out.bin -- 1 1
