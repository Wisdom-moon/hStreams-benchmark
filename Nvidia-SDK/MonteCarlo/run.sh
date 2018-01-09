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
for j in {1..224}; do
for i in {1..10}; do
./MonteCarlo -n8192 -r$i -p$j
done
done
