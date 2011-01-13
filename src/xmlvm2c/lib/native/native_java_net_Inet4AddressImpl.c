
#include "java_net_Inet4AddressImpl.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_OBJECT java_net_Inet4AddressImpl_getLocalHostName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_net_Inet4AddressImpl_getLocalHostName__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_net_Inet4AddressImpl_lookupAllHostAddr___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_net_Inet4AddressImpl_lookupAllHostAddr___java_lang_String]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_net_Inet4AddressImpl_getHostByAddr___byte_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_net_Inet4AddressImpl_getHostByAddr___byte_ARRAYTYPE]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_net_Inet4AddressImpl_isReachable0___byte_ARRAYTYPE_int_byte_ARRAYTYPE_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_NATIVE[java_net_Inet4AddressImpl_isReachable0___byte_ARRAYTYPE_int_byte_ARRAYTYPE_int]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_net_Inet4AddressImpl()
{
#ifdef XMLVM_VTABLE_IDX_java_net_Inet4AddressImpl_getLocalHostName__
    __TIB_java_net_Inet4AddressImpl.vtable[XMLVM_VTABLE_IDX_java_net_Inet4AddressImpl_getLocalHostName__] = 
        (VTABLE_PTR) java_net_Inet4AddressImpl_getLocalHostName__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_net_Inet4AddressImpl_lookupAllHostAddr___java_lang_String
    __TIB_java_net_Inet4AddressImpl.vtable[XMLVM_VTABLE_IDX_java_net_Inet4AddressImpl_lookupAllHostAddr___java_lang_String] = 
        (VTABLE_PTR) java_net_Inet4AddressImpl_lookupAllHostAddr___java_lang_String;
#endif
#ifdef XMLVM_VTABLE_IDX_java_net_Inet4AddressImpl_getHostByAddr___byte_ARRAYTYPE
    __TIB_java_net_Inet4AddressImpl.vtable[XMLVM_VTABLE_IDX_java_net_Inet4AddressImpl_getHostByAddr___byte_ARRAYTYPE] = 
        (VTABLE_PTR) java_net_Inet4AddressImpl_getHostByAddr___byte_ARRAYTYPE;
#endif
}
