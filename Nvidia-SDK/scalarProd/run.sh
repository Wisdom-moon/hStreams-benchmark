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
./Tune.py ./scalarProd -n4096 -e2048
./Tune.py ./scalarProd -n4096 -e4096
./Tune.py ./scalarProd -n6144 -e4096
./Tune.py ./scalarProd -n8192 -e4096
./Tune.py ./scalarProd -n8192 -e5120
./Tune.py ./scalarProd -n8192 -e6144
./Tune.py ./scalarProd -n8192 -e7168
./Tune.py ./scalarProd -n8192 -e8192
./Tune.py ./scalarProd -n9216 -e8192
./Tune.py ./scalarProd -n10240 -e8192
./Tune.py ./scalarProd -n11264 -e8192
./Tune.py ./scalarProd -n12288 -e8192
./Tune.py ./scalarProd -n13312 -e8192
./Tune.py ./scalarProd -n14336 -e8192
./Tune.py ./scalarProd -n15360 -e8192
./Tune.py ./scalarProd -n16384 -e8192
