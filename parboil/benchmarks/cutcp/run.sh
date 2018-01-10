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

export LOG_NAME=SMALL
./Tune.py ./cutcp -i /home/zp/benchmarks/hstreams/parboil/datasets/cutcp/small/input/watbox.sl40.pqr -o /home/zp/benchmarks/hstreams/parboil/benchmarks/cutcp/run/small/lattice.dat --
export LOG_NAME=LARGE
./Tune.py ./cutcp -i /home/zp/benchmarks/hstreams/parboil/datasets/cutcp/large/input/watbox.sl100.pqr -o /home/zp/benchmarks/hstreams/parboil/benchmarks/cutcp/run/large/lattice.dat --
