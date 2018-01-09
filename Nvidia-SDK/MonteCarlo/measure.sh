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
#4096	6144	8192	9216	10240	11264	12288	13312	14336	15360	16384

./MonteCarlo -b1 -p1 -n4096
./MonteCarlo -b1 -p1 -n4096
./MonteCarlo -b1 -p1 -n4096
./MonteCarlo -b1 -p1 -n6144
./MonteCarlo -b1 -p1 -n6144
./MonteCarlo -b1 -p1 -n6144
./MonteCarlo -b1 -p1 -n8192
./MonteCarlo -b1 -p1 -n8192
./MonteCarlo -b1 -p1 -n8192
./MonteCarlo -b1 -p1 -n9216
./MonteCarlo -b1 -p1 -n9216
./MonteCarlo -b1 -p1 -n9216
./MonteCarlo -b1 -p1 -n10240
./MonteCarlo -b1 -p1 -n10240
./MonteCarlo -b1 -p1 -n10240
./MonteCarlo -b1 -p1 -n11264
./MonteCarlo -b1 -p1 -n11264
./MonteCarlo -b1 -p1 -n11264
./MonteCarlo -b1 -p1 -n12288
./MonteCarlo -b1 -p1 -n12288
./MonteCarlo -b1 -p1 -n12288
./MonteCarlo -b1 -p1 -n13312
./MonteCarlo -b1 -p1 -n13312
./MonteCarlo -b1 -p1 -n13312
./MonteCarlo -b1 -p1 -n14336
./MonteCarlo -b1 -p1 -n14336
./MonteCarlo -b1 -p1 -n14336
./MonteCarlo -b1 -p1 -n15360
./MonteCarlo -b1 -p1 -n15360
./MonteCarlo -b1 -p1 -n15360
./MonteCarlo -b1 -p1 -n16384
./MonteCarlo -b1 -p1 -n16384
./MonteCarlo -b1 -p1 -n16384
