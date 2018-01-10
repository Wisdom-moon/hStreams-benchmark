# (c) 2007 The Board of Trustees of the University of Illinois.

SRCDIR=$(PARBOIL_ROOT)/common/src
BUILD_DIR=$(PARBOIL_ROOT)/common/lib

#include $(PARBOIL_ROOT)/common/mk/common.mk
#include $(PARBOIL_ROOT)/common/mk/cuda.mk

include $(PARBOIL_ROOT)/common/Makefile.conf

CFLAGS=-I$(PARBOIL_ROOT)/common/include

AR=ar
RANLIB=ranlib

OBJS=$(BUILD_DIR)/parboil.o
OBJS_TWO=$(BUILD_DIR)/parboil_cuda.o
OBJS_THREE=$(BUILD_DIR)/parboil_opencl.o
OBJS_FOUR=$(BUILD_DIR)/parboil_hstreams.o
TARGET=$(BUILD_DIR)/libparboil.a 
TARGET_TWO=$(BUILD_DIR)/libparboil_cuda.a
TARGET_THREE=$(BUILD_DIR)/libparboil_opencl.a
TARGET_FOUR=$(BUILD_DIR)/libparboil_hstreams.a

ifeq ($(CUDA_PATH),)
TARGET_CUDA=no_cuda
else
TARGET_CUDA=$(BUILD_DIR)/libparboil_cuda.a
endif

ifeq ($(OPENCL_PATH),)
TARGET_OPENCL=no_opencl
else
TARGET_OPENCL=$(BUILD_DIR)/libparboil_opencl.a
endif

ifeq ($(COI_DIR),)
TARGET_HSTREAMS=no_hstreams
else
TARGET_HSTREAMS=$(BUILD_DIR)/libparboil_hstreams.a
endif

TARGETS=$(TARGET) $(TARGET_CUDA) $(TARGET_OPENCL) $(TARGET_HSTREAMS)

.PHONY: all clean

all : $(TARGETS)

no_cuda:
	@echo
	@echo CUDA_PATH is not set in $$PARBOIL_ROOT/common/Makefile.conf. CUDA ignored. | grep --color CUDA_PATH
	@echo

no_opencl:
	@echo
	@echo OPENCL_PATH is not set in $$PARBOIL_ROOT/common/Makefile.conf. OPENCL ignored. | grep --color OPENCL_PATH
	@echo

no_hstreams:
	@echo
	@echo COI_DIR is not set in $$PARBOIL_ROOT/common/Makefile.conf. Hstreams ignored. | grep --color COI_DIR
	@echo

clean:
	rm -f $(OBJS) $(TARGETS)

$(BUILD_DIR)/parboil.o : parboil.c
	$(CC) -c -g $(CFLAGS) $^ -o $@

$(BUILD_DIR)/parboil_cuda.o : parboil_cuda.c
	$(CC) -c -g $(CFLAGS) -I$(CUDA_PATH)/include $^ -o $@

$(BUILD_DIR)/parboil_opencl.o : parboil_opencl.c
	$(CC) -c -g $(CFLAGS) -I$(OPENCL_PATH)/include $^ -o $@

$(BUILD_DIR)/parboil_hstreams.o : parboil_hstreams.cpp
	icc -c -g -lcoi_host -I$(COI_DIR) $^ -o $@

$(TARGET) : $(OBJS)
	$(AR) rc $@ $?
	$(RANLIB) $@

$(TARGET_TWO) : $(OBJS_TWO)
	$(AR) rc $@ $?
	$(RANLIB) $@
	
$(TARGET_THREE) : $(OBJS_THREE)
	$(AR) rc $@ $?
	$(RANLIB) $@	

$(TARGET_FOUR) : $(OBJS_FOUR)
	$(AR) rc $@ $?
	$(RANLIB) $@	
