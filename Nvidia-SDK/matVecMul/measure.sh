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

#for i in 1 2 3 4 7 8 11 14 16 28 30 56 ; do
#for j in {1..280}; do
#./MatVecMul -h24576 -w24576 -p$i -t$j
#done
#done
#./Tune.py ./MatVecMul -h20480 -w20480
#./MatVecMul -h8192 -w8192 -p1 -b1
./MatVecMul -h4096 -w2048 
./MatVecMul -h4096 -w2048
./MatVecMul -h4096 -w2048
./MatVecMul -h4096 -w2048 -p2 -b2
./MatVecMul -h4096 -w2048 -p2 -b2
./MatVecMul -h4096 -w2048 -p2 -b2
./MatVecMul -h4096 -w2048 -p23 -b23
./MatVecMul -h4096 -w2048 -p23 -b23
./MatVecMul -h4096 -w2048 -p23 -b23
./MatVecMul -h4096 -w4096
./MatVecMul -h4096 -w4096
./MatVecMul -h4096 -w4096
./MatVecMul -h4096 -w4096 -p2 -b2
./MatVecMul -h4096 -w4096 -p2 -b2
./MatVecMul -h4096 -w4096 -p2 -b2
./MatVecMul -h4096 -w4096 -p33 -b33
./MatVecMul -h4096 -w4096 -p33 -b33
./MatVecMul -h4096 -w4096 -p33 -b33
./MatVecMul -h6144 -w4096
./MatVecMul -h6144 -w4096
./MatVecMul -h6144 -w4096
./MatVecMul -h6144 -w4096  -p2 -b2
./MatVecMul -h6144 -w4096  -p2 -b2
./MatVecMul -h6144 -w4096 -p2 -b2
./MatVecMul -h8192 -w4096
./MatVecMul -h8192 -w4096
./MatVecMul -h8192 -w4096
./MatVecMul -h8192 -w4096 -p2 -b2
./MatVecMul -h8192 -w4096 -p2 -b2
./MatVecMul -h8192 -w4096 -p2 -b2
./MatVecMul -h8192 -w5120
./MatVecMul -h8192 -w5120
./MatVecMul -h8192 -w5120
./MatVecMul -h8192 -w5120 -p2 -b2
./MatVecMul -h8192 -w5120 -p2 -b2
./MatVecMul -h8192 -w5120 -p2 -b2
./MatVecMul -h8192 -w6144
./MatVecMul -h8192 -w6144
./MatVecMul -h8192 -w6144
./MatVecMul -h8192 -w6144 -p2 -b2
./MatVecMul -h8192 -w6144 -p2 -b2
./MatVecMul -h8192 -w6144 -p2 -b2
./MatVecMul -h8192 -w7168
./MatVecMul -h8192 -w7168
./MatVecMul -h8192 -w7168
./MatVecMul -h8192 -w7168 -p2 -b2
./MatVecMul -h8192 -w7168 -p2 -b2
./MatVecMul -h8192 -w7168 -p2 -b2
./MatVecMul -h8192 -w8192
./MatVecMul -h8192 -w8192
./MatVecMul -h8192 -w8192
./MatVecMul -h8192 -w8192 -p2 -b2
./MatVecMul -h8192 -w8192 -p2 -b2
./MatVecMul -h8192 -w8192 -p2 -b2
./MatVecMul -h9216 -w8192
./MatVecMul -h9216 -w8192
./MatVecMul -h9216 -w8192
./MatVecMul -h9216 -w8192 -p2 -b2
./MatVecMul -h9216 -w8192 -p2 -b2
./MatVecMul -h9216 -w8192 -p2 -b2
./MatVecMul -h10240 -w8192
./MatVecMul -h10240 -w8192
./MatVecMul -h10240 -w8192
./MatVecMul -h10240 -w8192 -p2 -b2
./MatVecMul -h10240 -w8192 -p2 -b2
./MatVecMul -h10240 -w8192 -p2 -b2
./MatVecMul -h11264 -w8192
./MatVecMul -h11264 -w8192
./MatVecMul -h11264 -w8192
./MatVecMul -h11264 -w8192 -p2 -b2
./MatVecMul -h11264 -w8192 -p2 -b2
./MatVecMul -h11264 -w8192 -p2 -b2
./MatVecMul -h12288 -w8192
./MatVecMul -h12288 -w8192
./MatVecMul -h12288 -w8192
./MatVecMul -h12288 -w8192 -p2 -b2
./MatVecMul -h12288 -w8192 -p2 -b2
./MatVecMul -h12288 -w8192 -p2 -b2
./MatVecMul -h13312 -w8192
./MatVecMul -h13312 -w8192
./MatVecMul -h13312 -w8192
./MatVecMul -h13312 -w8192 -p2 -b2
./MatVecMul -h13312 -w8192 -p2 -b2
./MatVecMul -h13312 -w8192 -p2 -b2
./MatVecMul -h14336 -w8192
./MatVecMul -h14336 -w8192
./MatVecMul -h14336 -w8192
./MatVecMul -h14336 -w8192 -p2 -b2
./MatVecMul -h14336 -w8192 -p2 -b2
./MatVecMul -h14336 -w8192 -p2 -b2
./MatVecMul -h15360 -w8192
./MatVecMul -h15360 -w8192
./MatVecMul -h15360 -w8192
./MatVecMul -h15360 -w8192 -p2 -b2
./MatVecMul -h15360 -w8192 -p2 -b2
./MatVecMul -h15360 -w8192 -p2 -b2
./MatVecMul -h16384 -w8192
./MatVecMul -h16384 -w8192
./MatVecMul -h16384 -w8192
./MatVecMul -h16384 -w8192 -p2 -b2
./MatVecMul -h16384 -w8192 -p2 -b2
./MatVecMul -h16384 -w8192 -p2 -b2
