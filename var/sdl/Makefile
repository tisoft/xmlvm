
# This Makefile relies on an installation of the Boehm Garbage Collector
# for the target platform. The Boehm GC can be downloaded, configured and
# installed as follows:
#
# cvs -d:pserver:anonymous@bdwgc.cvs.sourceforge.net:/cvsroot/bdwgc co bdwgc
# cd bdwgc
# ./configure --enable-threads=posix --enable-thread-local-alloc --enable-parallel-mark
# make
# make install

PRODUCT_NAME=__PROJNAME__


ALL_SOURCES=$(wildcard $(SRCROOT)/*.c) $(wildcard $(SRCROOT)/*.m)


SRCROOT=../src
DATAROOT=../data

BUILT_PRODUCTS_DIR=build

CONFIGURATION_TEMP_DIR=$(BUILT_PRODUCTS_DIR)/obj


CC=gcc
#CC=emcc
CFLAGS=-w -std=c99 -D_GNU_SOURCE -DALL_INTERIOR_POINTERS -DGC_THREADS \
       -DTHREAD_LOCAL_ALLOC -DPARALLEL_MARK -DUSE_MMAP \
       -DUSE_MUNMAP -DNO_DYLD_BIND_FULLY_IMAGE -I$(SRCROOT)
#CFLAGS=$(CFLAGS) -DLINUX

LD=$(CC)
LDFLAGS=-L/usr/local/lib
#LDFLAGS=-O2 -s ALLOW_MEMORY_GROWTH=1 --embed-file AndroidManifest.xml \
#        --embed-file LiberationSans-Regular.ttf \
#        --preload-file res
LIBS=-lgc -lm -lz -lSDL -lSDL_ttf -lSDL_image -lSDL_gfx


EXECUTABLE_NAME=$(PRODUCT_NAME)
#EXECUTABLE_NAME=$(PRODUCT_NAME).html

SOURCES_ABS=$(addprefix ./,$(ALL_SOURCES))


OBJECTS=\
	$(patsubst $(SRCROOT)/%.c,%.o,$(filter %.c,$(ALL_SOURCES))) \
	$(patsubst $(SRCROOT)/%.cc,%.o,$(filter %.cc,$(ALL_SOURCES))) \
	$(patsubst $(SRCROOT)/%.cpp,%.o,$(filter %.cpp,$(ALL_SOURCES))) \
	$(patsubst $(SRCROOT)/%.m,%.o,$(filter %.m,$(ALL_SOURCES))) \
	$(patsubst $(SRCROOT)/%.mm,%.o,$(filter %.mm,$(ALL_SOURCES)))

OBJECTS_ABS=$(addprefix $(CONFIGURATION_TEMP_DIR)/,$(OBJECTS))

APP_ABS=$(BUILT_PRODUCTS_DIR)/$(WRAPPER_NAME)

PRODUCT_ABS=$(APP_ABS)/$(EXECUTABLE_NAME)

all: compile data

data: $(APP_ABS)
	cp -r $(DATAROOT)/* $(BUILT_PRODUCTS_DIR)

compile: $(PRODUCT_ABS)

$(PRODUCT_ABS): $(APP_ABS) $(OBJECTS_ABS)
	$(LD) $(LDFLAGS) -o $(PRODUCT_ABS) $(OBJECTS_ABS) $(LIBS)

$(APP_ABS):
	mkdir -p $(APP_ABS)

$(CONFIGURATION_TEMP_DIR)/%.o: $(SRCROOT)/%.m
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

$(CONFIGURATION_TEMP_DIR)/%.o: $(SRCROOT)/%.c
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@


clean:
	rm -rf $(CONFIGURATION_TEMP_DIR)
	rm -rf $(BUILT_PRODUCTS_DIR)
	rm -f *~
