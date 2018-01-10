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
./Tune.py ./stencil -i /home/zp/benchmarks/hstreams/parboil/datasets/stencil/small/input/128x128x32.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/stencil/run/small/128x128x32.out -- 128 128 32 100 
export LOG_NAME=default
./Tune.py ./stencil -i /home/zp/benchmarks/hstreams/parboil/datasets/stencil/default/input/512x512x64x100.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/stencil/run/default/512x512x64.out -- 512 512 64 100 
