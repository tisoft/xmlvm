
#include "java_io_FileOutputStream.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_io_FileOutputStream_open___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_FileOutputStream_open___java_lang_String]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_FileOutputStream_openAppend___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_FileOutputStream_openAppend___java_lang_String]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_FileOutputStream_write___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_FileOutputStream_write___int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_FileOutputStream_writeBytes___byte_ARRAYTYPE_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_NATIVE[java_io_FileOutputStream_writeBytes___byte_ARRAYTYPE_int_int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_FileOutputStream_close0__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_io_FileOutputStream_close0__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_FileOutputStream_initIDs__()
{
    //XMLVM_BEGIN_NATIVE[java_io_FileOutputStream_initIDs__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_io_FileOutputStream()
{
#ifdef XMLVM_VTABLE_IDX_java_io_FileOutputStream_write___int
    __TIB_java_io_FileOutputStream.vtable[XMLVM_VTABLE_IDX_java_io_FileOutputStream_write___int] = 
        (VTABLE_PTR) java_io_FileOutputStream_write___int;
#endif
}
