# (c) 2007 The Board of Trustees of the University of Illinois.

# Default language wide options

COI_INC ?= -I$(PARBOIL_ROOT)/common/include -I$(COI_DIR) 

COMMON_FLAGS ?= $(COI_INC) -mkl

DEBUG_FLAGS = -g3 -ggdb -O0 -D_DEBUG
RELEASE_FLAGS = -DNDEBUG -O3
OPT = $(RELEASE)
CC_FLAGS = $(COMMON_FLAGS) $(OPT) -Wl,--enable-new-dtags

HOST_FLAGS = $(CC_FLAGS) -lcoi_host
DEV_FLAGS = $(CC_FLAGS) -lcoi_device -rdynamic


# Rules common to all makefiles

########################################
# Functions
########################################

# Add BUILDDIR as a prefix to each element of $1
INBUILDDIR=$(addprefix $(BUILDDIR)/,$(1))

# Add SRCDIR as a prefix to each element of $1
INSRCDIR=$(addprefix $(SRCDIR)/,$(1))


########################################
# Environment variable check
########################################

# The second-last directory in the $(BUILDDIR) path
# must have the name "build".  This reduces the risk of terrible
# accidents if paths are not set up correctly.
ifeq ("$(notdir $(BUILDDIR))", "")
$(error $$BUILDDIR is not set correctly)
endif

ifneq ("$(notdir $(patsubst %/,%,$(dir $(BUILDDIR))))", "build")
$(error $$BUILDDIR is not set correctly)
endif

.PHONY: run

ifeq ($(OPENCL_PATH),)
FAILSAFE=no_opencl
else 
FAILSAFE=
endif

########################################
# Derived variables
########################################

SO_NAME = $(DEV_CPP_OBJS:.dev.o=.so)
HOST_OBJS = $(call INBUILDDIR,$(HOST_CPP_OBJS))
DEV_OBJS = $(call INBUILDDIR,$(DEV_CPP_OBJS))
DEV_LIB = $(DEV_OBJS:.dev.o=.so)

ifeq ($(DEBUGGER),)
DEBUGGER=gdb
endif


########################################
# Rules
########################################

default: $(FAILSAFE) $(BUILDDIR) $(BIN) $(DEV_LIB)

run:
	@echo "Resolving hstreams library..."
	@$(shell echo $(RUNTIME_ENV))	\
	export SINK_LD_LIBRARY_PATH=$(SINK_LD_LIBRARY_PATH):$(MKLROOT)/lib/mic/:$(MKLROOT)/../compiler/lib/mic	\
	export SINK_LD_LIBRARY_PATH=$(SINK_LD_LIBRARY_PATH):$(BUILDDIR):/opt/mpss/3.5/sysroots/k1om-mpss-linux/usr/lib64/	\
	export LD_LIBRARY_PATH=$(LD_LIBRARY_PATH):$(BUILDDIR):/usr/lib64	\
	export MKL_MIC_MAX_MEMORY=8G \
	export MIC_USE_2MB_BUFFERS=64K	\
	export KMP_AFFINITY=scatter	\
	export MIC_ENV_PREFIX=MIC	\
	export MIC_KMP_AFFINITY=balanced 	\	
	echo $(PATH)	\
	$(BIN) $(ARGS)

clean :
	rm -f $(BUILDDIR)/*
	if [ -d $(BUILDDIR) ]; then rmdir $(BUILDDIR); fi

$(BIN) : $(HOST_OBJS) $(BUILDDIR)/parboil_hstreams.o $(BUILDDIR)/parboil.o
	$(HOST_CC) $^ -o $@ $(HOST_FLAGS) -lhstreams_source

$(DEV_LIB) : $(DEV_OBJS)
	$(DEV_CC) $^ -o $@ $(DEV_FLAGS) -fPIC -shared -lhstreams_sink -Wl,-soname,$(SO_NAME) -static-intel

$(BUILDDIR) :
	mkdir -p $(BUILDDIR)

$(BUILDDIR)/%.dev.o : $(SRCDIR)/%.cpp
	$(DEV_CC) $(DEV_FLAGS) -fPIC -shared -c $^ -o $@

$(BUILDDIR)/%.host.o : $(SRCDIR)/%.cpp
	$(HOST_CC) $(HOST_FLAGS) -c $^ -o $@

$(BUILDDIR)/parboil_hstreams.o : $(PARBOIL_ROOT)/common/src/parboil_hstreams.cpp
	$(HOST_CC) $(HOST_FLAGS) -c $< -o $@
$(BUILDDIR)/parboil.o : $(PARBOIL_ROOT)/common/src/parboil.c
	$(HOST_CC) $(HOST_FLAGS) -c $< -o $@

no_opencl:
	@echo "OPENCL_PATH is not set. Open $(PARBOIL_ROOT)/common/Makefile.conf to set default value."
	@echo "You may use $(PLATFORM_MK) if you want a platform specific configurations."
	@exit 1

