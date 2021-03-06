# Copyright 2012 Intel Corporation.
#
# This file is subject to the Intel Sample Source Code License. A copy
# of the Intel Sample Source Code License is included.

#scatter affinity set on host
export KMP_AFFINITY=scatter

#for MKL AO run
export MIC_ENV_PREFIX=MIC
export MIC_KMP_AFFINITY=balanced

. ../../common/setEnv.sh ./build/hstreams_default/

cd ./build/hstreams_default/host

./histo -i /home/zp/benchmarks/hstreams/parboil/datasets/histo/large/input/img.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/histo/run/large/ref.bmp -- 10000 4  1 1
./histo -i /home/zp/benchmarks/hstreams/parboil/datasets/histo/large/input/img.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/histo/run/large/ref.bmp -- 10000 4  1 1
./histo -i /home/zp/benchmarks/hstreams/parboil/datasets/histo/large/input/img.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/histo/run/large/ref.bmp -- 10000 4  1 1
./histo -i /home/zp/benchmarks/hstreams/parboil/datasets/histo/large/input/img.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/histo/run/large/ref.bmp -- 10000 4  17 85
./histo -i /home/zp/benchmarks/hstreams/parboil/datasets/histo/large/input/img.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/histo/run/large/ref.bmp -- 10000 4  17 85
./histo -i /home/zp/benchmarks/hstreams/parboil/datasets/histo/large/input/img.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/histo/run/large/ref.bmp -- 10000 4  17 85
./histo -i /home/zp/benchmarks/hstreams/parboil/datasets/histo/large/input/img.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/histo/run/large/ref.bmp -- 10000 4  4 16
./histo -i /home/zp/benchmarks/hstreams/parboil/datasets/histo/large/input/img.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/histo/run/large/ref.bmp -- 10000 4  4 16
./histo -i /home/zp/benchmarks/hstreams/parboil/datasets/histo/large/input/img.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/histo/run/large/ref.bmp -- 10000 4  4 16
