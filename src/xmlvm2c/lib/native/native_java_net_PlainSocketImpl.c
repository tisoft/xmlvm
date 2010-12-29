
#include "java_net_PlainSocketImpl.h"

void java_net_PlainSocketImpl_socketCreate___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_NATIVE[java_net_PlainSocketImpl_socketCreate___boolean]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_net_PlainSocketImpl_socketConnect___java_net_InetAddress_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_NATIVE[java_net_PlainSocketImpl_socketConnect___java_net_InetAddress_int_int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_net_PlainSocketImpl_socketBind___java_net_InetAddress_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_net_PlainSocketImpl_socketBind___java_net_InetAddress_int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_net_PlainSocketImpl_socketListen___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_NATIVE[java_net_PlainSocketImpl_socketListen___int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_net_PlainSocketImpl_socketAccept___java_net_SocketImpl(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_net_PlainSocketImpl_socketAccept___java_net_SocketImpl]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_net_PlainSocketImpl_socketAvailable__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_net_PlainSocketImpl_socketAvailable__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_net_PlainSocketImpl_socketClose0___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_NATIVE[java_net_PlainSocketImpl_socketClose0___boolean]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_net_PlainSocketImpl_socketShutdown___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_NATIVE[java_net_PlainSocketImpl_socketShutdown___int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_net_PlainSocketImpl_initProto__()
{
    //XMLVM_BEGIN_NATIVE[java_net_PlainSocketImpl_initProto__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_net_PlainSocketImpl_socketSetOption___int_boolean_java_lang_Object(JAVA_OBJECT me, JAVA_INT n1, JAVA_BOOLEAN n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_NATIVE[java_net_PlainSocketImpl_socketSetOption___int_boolean_java_lang_Object]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_net_PlainSocketImpl_socketGetOption___int_java_lang_Object(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_NATIVE[java_net_PlainSocketImpl_socketGetOption___int_java_lang_Object]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_net_PlainSocketImpl_socketGetOption1___int_java_lang_Object_java_io_FileDescriptor(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_NATIVE[java_net_PlainSocketImpl_socketGetOption1___int_java_lang_Object_java_io_FileDescriptor]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

void java_net_PlainSocketImpl_socketSendUrgentData___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_NATIVE[java_net_PlainSocketImpl_socketSendUrgentData___int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_net_PlainSocketImpl()
{
    __TIB_java_net_PlainSocketImpl.vtable[XMLVM_VTABLE_IDX_java_net_PlainSocketImpl_socketCreate___boolean] = 
        (VTABLE_PTR) java_net_PlainSocketImpl_socketCreate___boolean;
    __TIB_java_net_PlainSocketImpl.vtable[XMLVM_VTABLE_IDX_java_net_PlainSocketImpl_socketConnect___java_net_InetAddress_int_int] = 
        (VTABLE_PTR) java_net_PlainSocketImpl_socketConnect___java_net_InetAddress_int_int;
    __TIB_java_net_PlainSocketImpl.vtable[XMLVM_VTABLE_IDX_java_net_PlainSocketImpl_socketBind___java_net_InetAddress_int] = 
        (VTABLE_PTR) java_net_PlainSocketImpl_socketBind___java_net_InetAddress_int;
    __TIB_java_net_PlainSocketImpl.vtable[XMLVM_VTABLE_IDX_java_net_PlainSocketImpl_socketListen___int] = 
        (VTABLE_PTR) java_net_PlainSocketImpl_socketListen___int;
    __TIB_java_net_PlainSocketImpl.vtable[XMLVM_VTABLE_IDX_java_net_PlainSocketImpl_socketAccept___java_net_SocketImpl] = 
        (VTABLE_PTR) java_net_PlainSocketImpl_socketAccept___java_net_SocketImpl;
    __TIB_java_net_PlainSocketImpl.vtable[XMLVM_VTABLE_IDX_java_net_PlainSocketImpl_socketAvailable__] = 
        (VTABLE_PTR) java_net_PlainSocketImpl_socketAvailable__;
    __TIB_java_net_PlainSocketImpl.vtable[XMLVM_VTABLE_IDX_java_net_PlainSocketImpl_socketClose0___boolean] = 
        (VTABLE_PTR) java_net_PlainSocketImpl_socketClose0___boolean;
    __TIB_java_net_PlainSocketImpl.vtable[XMLVM_VTABLE_IDX_java_net_PlainSocketImpl_socketShutdown___int] = 
        (VTABLE_PTR) java_net_PlainSocketImpl_socketShutdown___int;
    __TIB_java_net_PlainSocketImpl.vtable[XMLVM_VTABLE_IDX_java_net_PlainSocketImpl_socketSetOption___int_boolean_java_lang_Object] = 
        (VTABLE_PTR) java_net_PlainSocketImpl_socketSetOption___int_boolean_java_lang_Object;
    __TIB_java_net_PlainSocketImpl.vtable[XMLVM_VTABLE_IDX_java_net_PlainSocketImpl_socketGetOption___int_java_lang_Object] = 
        (VTABLE_PTR) java_net_PlainSocketImpl_socketGetOption___int_java_lang_Object;
    __TIB_java_net_PlainSocketImpl.vtable[XMLVM_VTABLE_IDX_java_net_PlainSocketImpl_socketGetOption1___int_java_lang_Object_java_io_FileDescriptor] = 
        (VTABLE_PTR) java_net_PlainSocketImpl_socketGetOption1___int_java_lang_Object_java_io_FileDescriptor;
    __TIB_java_net_PlainSocketImpl.vtable[XMLVM_VTABLE_IDX_java_net_PlainSocketImpl_socketSendUrgentData___int] = 
        (VTABLE_PTR) java_net_PlainSocketImpl_socketSendUrgentData___int;
}
