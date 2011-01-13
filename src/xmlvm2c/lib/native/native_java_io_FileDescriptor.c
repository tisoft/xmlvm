
#include "java_io_FileDescriptor.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_io_FileDescriptor_sync__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_io_FileDescriptor_sync__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_FileDescriptor_initIDs__()
{
    //XMLVM_BEGIN_NATIVE[java_io_FileDescriptor_initIDs__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_io_FileDescriptor()
{
#ifdef XMLVM_VTABLE_IDX_java_io_FileDescriptor_sync__
    __TIB_java_io_FileDescriptor.vtable[XMLVM_VTABLE_IDX_java_io_FileDescriptor_sync__] = 
        (VTABLE_PTR) java_io_FileDescriptor_sync__;
#endif
}
