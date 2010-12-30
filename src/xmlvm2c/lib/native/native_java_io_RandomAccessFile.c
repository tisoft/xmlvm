
#include "java_io_RandomAccessFile.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_io_RandomAccessFile_open___java_lang_String_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_io_RandomAccessFile_open___java_lang_String_int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_io_RandomAccessFile_read__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_io_RandomAccessFile_read__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_io_RandomAccessFile_readBytes___byte_ARRAYTYPE_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_NATIVE[java_io_RandomAccessFile_readBytes___byte_ARRAYTYPE_int_int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_RandomAccessFile_write___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_RandomAccessFile_write___int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_RandomAccessFile_writeBytes___byte_ARRAYTYPE_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_NATIVE[java_io_RandomAccessFile_writeBytes___byte_ARRAYTYPE_int_int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_LONG java_io_RandomAccessFile_getFilePointer__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_io_RandomAccessFile_getFilePointer__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_RandomAccessFile_seek___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_RandomAccessFile_seek___long]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_LONG java_io_RandomAccessFile_length__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_io_RandomAccessFile_length__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_RandomAccessFile_setLength___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[java_io_RandomAccessFile_setLength___long]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_RandomAccessFile_initIDs__()
{
    //XMLVM_BEGIN_NATIVE[java_io_RandomAccessFile_initIDs__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_io_RandomAccessFile_close0__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_io_RandomAccessFile_close0__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_io_RandomAccessFile()
{
    __TIB_java_io_RandomAccessFile.vtable[XMLVM_VTABLE_IDX_java_io_RandomAccessFile_read__] = 
        (VTABLE_PTR) java_io_RandomAccessFile_read__;
    __TIB_java_io_RandomAccessFile.vtable[XMLVM_VTABLE_IDX_java_io_RandomAccessFile_write___int] = 
        (VTABLE_PTR) java_io_RandomAccessFile_write___int;
    __TIB_java_io_RandomAccessFile.vtable[XMLVM_VTABLE_IDX_java_io_RandomAccessFile_getFilePointer__] = 
        (VTABLE_PTR) java_io_RandomAccessFile_getFilePointer__;
    __TIB_java_io_RandomAccessFile.vtable[XMLVM_VTABLE_IDX_java_io_RandomAccessFile_seek___long] = 
        (VTABLE_PTR) java_io_RandomAccessFile_seek___long;
    __TIB_java_io_RandomAccessFile.vtable[XMLVM_VTABLE_IDX_java_io_RandomAccessFile_length__] = 
        (VTABLE_PTR) java_io_RandomAccessFile_length__;
    __TIB_java_io_RandomAccessFile.vtable[XMLVM_VTABLE_IDX_java_io_RandomAccessFile_setLength___long] = 
        (VTABLE_PTR) java_io_RandomAccessFile_setLength___long;
}
