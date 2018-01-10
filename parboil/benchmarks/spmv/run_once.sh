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

#./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/small/input/1138_bus.mtx,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/small/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/small/1138_bus.mtx.out --  1 1
#./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/small/input/1138_bus.mtx,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/small/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/small/1138_bus.mtx.out --  2 2
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 1 1
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 1 1
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 1 1
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 2 8
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 2 8
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 2 8
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 2 18
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 2 18
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 2 18
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 2 18
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 4 16
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 4 16
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 4 16
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 4 16
./spmv -i /home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/Dubcova3.mtx.bin,/home/zp/benchmarks/hstreams/parboil/datasets/spmv/large/input/vector.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/spmv/run/large/Dubcova3.mtx.out -- 4 16
