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
./Tune.py ./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/small/input/32_32_32_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/small/32_32_32_dataset.out --
export LOG_NAME=large
./Tune.py ./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/large/input/64_64_64_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/large/64_64_64_dataset.out --
