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
./Tune.py ./mri-gridding -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-gridding/small/input/small.uks -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-gridding/run/small/output.txt -- 32 0 
