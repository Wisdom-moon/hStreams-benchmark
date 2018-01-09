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

#for i in {1..56} ;do
#for i in 1 8 16 32 56 64 112 128 168 224;do
#./dot -i128 -n52428800 -p1 -t1 -r$i
#done

./binomial -n4096 -b1 -p1
./binomial -n4096 -b1 -p1
./binomial -n4096 -b1 -p1
./binomial -n6144 -b1 -p1
./binomial -n6144 -b1 -p1
./binomial -n6144 -b1 -p1
./binomial -n8192 -b1 -p1
./binomial -n8192 -b1 -p1
./binomial -n8192 -b1 -p1
./binomial -n9216 -b1 -p1
./binomial -n9216 -b1 -p1
./binomial -n9216 -b1 -p1
./binomial -n10240 -b1 -p1
./binomial -n10240 -b1 -p1
./binomial -n10240 -b1 -p1
./binomial -n11264 -b1 -p1
./binomial -n11264 -b1 -p1
./binomial -n11264 -b1 -p1
./binomial -n12288 -b1 -p1
./binomial -n12288 -b1 -p1
./binomial -n12288 -b1 -p1
./binomial -n13312 -b1 -p1
./binomial -n13312 -b1 -p1
./binomial -n13312 -b1 -p1
./binomial -n14336 -b1 -p1
./binomial -n14336 -b1 -p1
./binomial -n14336 -b1 -p1
./binomial -n15360 -b1 -p1
./binomial -n15360 -b1 -p1
./binomial -n15360 -b1 -p1
./binomial -n16384 -b1 -p1
./binomial -n16384 -b1 -p1
./binomial -n16384 -b1 -p1
