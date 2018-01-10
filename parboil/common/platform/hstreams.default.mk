# (c) 2007 The Board of Trustees of the University of Illinois.

# Rules common to all makefiles

# Commands to build objects from source file using C compiler
# with gcc

# Uncomment below two lines and configure if you want to use a platform
# other than global one

#OPENCL_PATH=/scr/hskim/ati-stream-sdk-v2.3-lnx64
#OPENCL_LIB_PATH=$(OPENCL_PATH)/lib/x86_64

# icc (default)
CC = icc -Wall -Werror-all
PLATFORM_CFLAGS = 

HOST_CC ?= $(CC)       -qopenmp
DEV_CC  ?= $(CC) -mmic -qopenmp
  
CXX = icpc
PLATFORM_CXXFLAGS = 
  
LINKER = icpc 
PLATFORM_LDFLAGS = -lm -lpthread

