# (c) 2010 The Board of Trustees of the University of Illinois

LANGUAGE=hstreams
HOST_CPP_SRCS=main.cpp file.cpp
DEV_CPP_SRCS=kernel.cpp
HOST_CPP_OBJS=$(HOST_CPP_SRCS:.cpp=.host.o)
DEV_CPP_OBJS=$(DEV_CPP_SRCS:.cpp=.dev.o)

HOST_CPP_OBJS += ../../common_src/convert-dataset/convert_dataset.o ../../common_src/convert-dataset/mmio.o
TOOLS_SRC=common_src/convert-dataset
