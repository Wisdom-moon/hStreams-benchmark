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

./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/large/input/64_64_64_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/large/64_64_64_dataset.out -- 1 1
./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/large/input/64_64_64_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/large/64_64_64_dataset.out -- 1 1
./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/large/input/64_64_64_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/large/64_64_64_dataset.out -- 1 1
./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/large/input/64_64_64_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/large/64_64_64_dataset.out -- 3 3
./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/large/input/64_64_64_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/large/64_64_64_dataset.out -- 3 3
./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/large/input/64_64_64_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/large/64_64_64_dataset.out -- 3 3
./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/large/input/64_64_64_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/large/64_64_64_dataset.out -- 17 85
./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/large/input/64_64_64_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/large/64_64_64_dataset.out -- 17 85
./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/large/input/64_64_64_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/large/64_64_64_dataset.out -- 17 85
./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/large/input/64_64_64_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/large/64_64_64_dataset.out -- 4 16
./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/large/input/64_64_64_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/large/64_64_64_dataset.out -- 4 16
./mri-q -i /home/zp/benchmarks/hstreams/parboil/datasets/mri-q/large/input/64_64_64_dataset.bin -o /home/zp/benchmarks/hstreams/parboil/benchmarks/mri-q/run/large/64_64_64_dataset.out -- 4 16
