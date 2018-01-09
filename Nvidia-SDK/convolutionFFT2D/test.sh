# Copyright 2012 Intel Corporation.
#
# This file is subject to the Intel Sample Source Code License. A copy
# of the Intel Sample Source Code License is included.

#scatter affinity set on host
export KMP_AFFINITY=scatter

#for MKL AO run
export MIC_ENV_PREFIX=MIC
export MIC_KMP_AFFINITY=balanced

. ./setEnv.sh ./bin

cd ./bin/host
base=14
./fft -w7168 -h8192 -p$base -b$base
./fft -w7168 -h8192 -p$base -b$base
./fft -w7168 -h8192 -p$base -b$base
./fft -w7168 -h8192 -p$base -b$base
./fft -w7168 -h8192 -p$base -b$base
./fft -w7168 -h8192 -p$base -b$base
