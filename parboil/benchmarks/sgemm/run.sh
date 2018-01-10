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

export LOG_NAME=small
./Tune.py ./sgemm -i /home/zp/benchmarks/hstreams/parboil/datasets/sgemm/small/input/matrix1.txt,/home/zp/benchmarks/hstreams/parboil/datasets/sgemm/small/input/matrix2t.txt,/home/zp/benchmarks/hstreams/parboil/datasets/sgemm/small/input/matrix2t.txt -o /home/zp/benchmarks/hstreams/parboil/benchmarks/sgemm/run/small/matrix3.txt -- 
export LOG_NAME=medium
./Tune.py ./sgemm -i /home/zp/benchmarks/hstreams/parboil/datasets/sgemm/medium/input/matrix1.txt,/home/zp/benchmarks/hstreams/parboil/datasets/sgemm/medium/input/matrix2t.txt,/home/zp/benchmarks/hstreams/parboil/datasets/sgemm/medium/input/matrix2t.txt -o /home/zp/benchmarks/hstreams/parboil/benchmarks/sgemm/run/medium/matrix3.txt -- 
