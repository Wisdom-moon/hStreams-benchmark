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


./con -p1 -b1 -h4096 -w2048
./con -p1 -b1 -h4096 -w2048
./con -p1 -b1 -h4096 -w2048
./con -p1 -b1 -h4096 -w4096
./con -p1 -b1 -h4096 -w4096
./con -p1 -b1 -h4096 -w4096
./con -p1 -b1 -h6144 -w4096
./con -p1 -b1 -h6144 -w4096
./con -p1 -b1 -h6144 -w4096
./con -p1 -b1 -h8192 -w4096
./con -p1 -b1 -h8192 -w4096
./con -p1 -b1 -h8192 -w4096
./con -p1 -b1 -h8192 -w5120
./con -p1 -b1 -h8192 -w5120
./con -p1 -b1 -h8192 -w5120
./con -p1 -b1 -h8192 -w6144
./con -p1 -b1 -h8192 -w6144
./con -p1 -b1 -h8192 -w6144
./con -p1 -b1 -h8192 -w7168
./con -p1 -b1 -h8192 -w7168
./con -p1 -b1 -h8192 -w7168
./con -p1 -b1 -h8192 -w8192
./con -p1 -b1 -h8192 -w8192
./con -p1 -b1 -h8192 -w8192
./con -p1 -b1 -h9216 -w8192
./con -p1 -b1 -h9216 -w8192
./con -p1 -b1 -h9216 -w8192
./con -p1 -b1 -h10240 -w8192
./con -p1 -b1 -h10240 -w8192
./con -p1 -b1 -h10240 -w8192
./con -p1 -b1 -h11264 -w8192
./con -p1 -b1 -h11264 -w8192
./con -p1 -b1 -h11264 -w8192
./con -p1 -b1 -h12288 -w8192
./con -p1 -b1 -h12288 -w8192
./con -p1 -b1 -h12288 -w8192
./con -p1 -b1 -h13312 -w8192
./con -p1 -b1 -h13312 -w8192
./con -p1 -b1 -h13312 -w8192
./con -p1 -b1 -h14336 -w8192
./con -p1 -b1 -h14336 -w8192
./con -p1 -b1 -h14336 -w8192
./con -p1 -b1 -h15360 -w8192
./con -p1 -b1 -h15360 -w8192
./con -p1 -b1 -h15360 -w8192
./con -p1 -b1 -h16384 -w8192
./con -p1 -b1 -h16384 -w8192
./con -p1 -b1 -h16384 -w8192
