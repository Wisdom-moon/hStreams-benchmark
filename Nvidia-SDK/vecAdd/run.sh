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

for i in {1..56} ;do
./dot -i128 -n52428800 -p$i -t1638400 -r224
done

for i in 52428800 26214400 13107200 6553600 3276800 1638400 819200 409600 204800 102400 51200 25600 12800 6400 3200 1600 800; do
./dot -i128 -n52428800 -p4 -t$i -r224
done
#./dot -i128 -n6553600 -p4 -t5242880 -r8
