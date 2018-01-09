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

#./Tune.py ./dot -n50000000

./dot -n4096 -p1 -b1
./dot -n4096 -p1 -b1
./dot -n4096 -p1 -b1
./dot -n6144 -p1 -b1
./dot -n6144 -p1 -b1
./dot -n6144 -p1 -b1
./dot -n8192 -p1 -b1
./dot -n8192 -p1 -b1
./dot -n8192 -p1 -b1
./dot -n9216 -p1 -b1
./dot -n9216 -p1 -b1
./dot -n9216 -p1 -b1
./dot -n10240 -p1 -b1
./dot -n10240 -p1 -b1
./dot -n10240 -p1 -b1
./dot -n11264 -p1 -b1
./dot -n11264 -p1 -b1
./dot -n11264 -p1 -b1
./dot -n12288 -p1 -b1
./dot -n12288 -p1 -b1
./dot -n12288 -p1 -b1
./dot -n13312 -p1 -b1
./dot -n13312 -p1 -b1
./dot -n13312 -p1 -b1
./dot -n14336 -p1 -b1
./dot -n14336 -p1 -b1
./dot -n14336 -p1 -b1
./dot -n15360 -p1 -b1
./dot -n15360 -p1 -b1
./dot -n15360 -p1 -b1
./dot -n16384 -p1 -b1
./dot -n16384 -p1 -b1
./dot -n16384 -p1 -b1
