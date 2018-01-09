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

#./Tune.py ./vecAdd -n67108864

./vecAdd -n4096 -p1 -b1
./vecAdd -n4096 -p1 -b1
./vecAdd -n4096 -p1 -b1
./vecAdd -n6144 -p1 -b1
./vecAdd -n6144 -p1 -b1
./vecAdd -n6144 -p1 -b1
./vecAdd -n8192 -p1 -b1
./vecAdd -n8192 -p1 -b1
./vecAdd -n8192 -p1 -b1
./vecAdd -n9216 -p1 -b1
./vecAdd -n9216 -p1 -b1
./vecAdd -n9216 -p1 -b1
./vecAdd -n10240 -p1 -b1
./vecAdd -n10240 -p1 -b1
./vecAdd -n10240 -p1 -b1
./vecAdd -n11264 -p1 -b1
./vecAdd -n11264 -p1 -b1
./vecAdd -n11264 -p1 -b1
./vecAdd -n12288 -p1 -b1
./vecAdd -n12288 -p1 -b1
./vecAdd -n12288 -p1 -b1
./vecAdd -n13312 -p1 -b1
./vecAdd -n13312 -p1 -b1
./vecAdd -n13312 -p1 -b1
./vecAdd -n14336 -p1 -b1
./vecAdd -n14336 -p1 -b1
./vecAdd -n14336 -p1 -b1
./vecAdd -n15360 -p1 -b1
./vecAdd -n15360 -p1 -b1
./vecAdd -n15360 -p1 -b1
./vecAdd -n16384 -p1 -b1
./vecAdd -n16384 -p1 -b1
./vecAdd -n16384 -p1 -b1

