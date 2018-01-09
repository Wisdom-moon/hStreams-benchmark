# Copyright 2012 Intel Corporation.
#
# This file is subject to the Intel Sample Source Code License. A copy
# of the Intel Sample Source Code License is included.

#scatter affinity set on host
export KMP_AFFINITY=scatter

#for MKL AO run
export MIC_ENV_PREFIX=MIC
export MIC_KMP_AFFINITY=balanced

. ../../common/setEnv.sh ./bin

cd ./bin/host

./BlackScholes -b1 -p1 -n4096
./BlackScholes -b1 -p1 -n4096
./BlackScholes -b1 -p1 -n4096
./BlackScholes -b1 -p1 -n6144
./BlackScholes -b1 -p1 -n6144
./BlackScholes -b1 -p1 -n6144
./BlackScholes -b1 -p1 -n8192
./BlackScholes -b1 -p1 -n8192
./BlackScholes -b1 -p1 -n8192
./BlackScholes -b1 -p1 -n9216
./BlackScholes -b1 -p1 -n9216
./BlackScholes -b1 -p1 -n9216
./BlackScholes -b1 -p1 -n10240
./BlackScholes -b1 -p1 -n10240
./BlackScholes -b1 -p1 -n10240
./BlackScholes -b1 -p1 -n11264
./BlackScholes -b1 -p1 -n11264
./BlackScholes -b1 -p1 -n11264
./BlackScholes -b1 -p1 -n12288
./BlackScholes -b1 -p1 -n12288
./BlackScholes -b1 -p1 -n12288
./BlackScholes -b1 -p1 -n13312
./BlackScholes -b1 -p1 -n13312
./BlackScholes -b1 -p1 -n13312
./BlackScholes -b1 -p1 -n14336
./BlackScholes -b1 -p1 -n14336
./BlackScholes -b1 -p1 -n14336
./BlackScholes -b1 -p1 -n15360
./BlackScholes -b1 -p1 -n15360
./BlackScholes -b1 -p1 -n15360
./BlackScholes -b1 -p1 -n16384
./BlackScholes -b1 -p1 -n16384
./BlackScholes -b1 -p1 -n16384
