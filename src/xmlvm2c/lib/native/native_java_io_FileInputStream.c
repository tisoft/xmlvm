
#include "java_io_FileInputStream.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_io_FileInputStream_open___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_FileInputStream_open___java_lang_String]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_io_FileInputStream_read__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_io_FileInputStream_read__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_io_FileInputStream_readBytes___byte_ARRAYTYPE_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_NATIVE[java_io_FileInputStream_readBytes___byte_ARRAYTYPE_int_int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_LONG java_io_FileInputStream_skip___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_FileInputStream_skip___long]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_io_FileInputStream_available__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_io_FileInputStream_available__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_FileInputStream_initIDs__()
{
    //XMLVM_BEGIN_NATIVE[java_io_FileInputStream_initIDs__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_FileInputStream_close0__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_io_FileInputStream_close0__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_io_FileInputStream()
{
    __TIB_java_io_FileInputStream.vtable[XMLVM_VTABLE_IDX_java_io_FileInputStream_read__] = 
        (VTABLE_PTR) java_io_FileInputStream_read__;
    __TIB_java_io_FileInputStream.vtable[XMLVM_VTABLE_IDX_java_io_FileInputStream_skip___long] = 
        (VTABLE_PTR) java_io_FileInputStream_skip___long;
    __TIB_java_io_FileInputStream.vtable[XMLVM_VTABLE_IDX_java_io_FileInputStream_available__] = 
        (VTABLE_PTR) java_io_FileInputStream_available__;
}
