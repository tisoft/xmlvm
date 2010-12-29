
#include "java_net_Inet6AddressImpl.h"

JAVA_OBJECT java_net_Inet6AddressImpl_getLocalHostName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_net_Inet6AddressImpl_getLocalHostName__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_net_Inet6AddressImpl_lookupAllHostAddr___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_net_Inet6AddressImpl_lookupAllHostAddr___java_lang_String]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_net_Inet6AddressImpl_getHostByAddr___byte_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_net_Inet6AddressImpl_getHostByAddr___byte_ARRAYTYPE]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_net_Inet6AddressImpl_isReachable0___byte_ARRAYTYPE_int_int_byte_ARRAYTYPE_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_OBJECT n4, JAVA_INT n5, JAVA_INT n6)
{
    //XMLVM_BEGIN_NATIVE[java_net_Inet6AddressImpl_isReachable0___byte_ARRAYTYPE_int_int_byte_ARRAYTYPE_int_int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_net_Inet6AddressImpl()
{
    __TIB_java_net_Inet6AddressImpl.vtable[XMLVM_VTABLE_IDX_java_net_Inet6AddressImpl_getLocalHostName__] = 
        (VTABLE_PTR) java_net_Inet6AddressImpl_getLocalHostName__;
    __TIB_java_net_Inet6AddressImpl.vtable[XMLVM_VTABLE_IDX_java_net_Inet6AddressImpl_lookupAllHostAddr___java_lang_String] = 
        (VTABLE_PTR) java_net_Inet6AddressImpl_lookupAllHostAddr___java_lang_String;
    __TIB_java_net_Inet6AddressImpl.vtable[XMLVM_VTABLE_IDX_java_net_Inet6AddressImpl_getHostByAddr___byte_ARRAYTYPE] = 
        (VTABLE_PTR) java_net_Inet6AddressImpl_getHostByAddr___byte_ARRAYTYPE;
}
