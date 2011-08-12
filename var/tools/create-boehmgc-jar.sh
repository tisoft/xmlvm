#!/bin/sh

# This script needs to be invoked from the base directory
# of the Boehm GC source distribution.

jar cf boehmgc.jar \
    backgraph.c \
    blacklst.c \
    checksums.c \
    gcj_mlc.c \
    headers.c \
    malloc.c \
    new_hblk.c \
    obj_map.c \
    ptr_chck.c \
    stubborn.c \
    allchblk.c \
    alloc.c \
    dbg_mlc.c \
    finalize.c \
    mallocx.c \
    mark.c \
    mark_rts.c \
    reclaim.c \
    typd_mlc.c \
    misc.c \
    os_dep.c \
    thread_local_alloc.c \
    darwin_stop_world.c \
    dyn_load.c \
    gc_dlopen.c \
    mach_dep.c \
    pcr_interface.c \
    pthread_stop_world.c \
    pthread_support.c \
    specific.c \
    win32_threads.c \
    pthread_start.c \
    libatomic_ops/ \
    include/

cp boehmgc.jar /Users/arno/Workspace/xmlvm/lib/

