#include "java_util_Map.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSError.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSError __CLASS_org_xmlvm_iphone_NSError = {
    0, // classInitialized
    "org.xmlvm.iphone.NSError", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSError()
{
    __CLASS_org_xmlvm_iphone_NSError.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSError.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSError;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSError.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSError.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSError_domain__;
    __CLASS_org_xmlvm_iphone_NSError.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSError_code__;
    __CLASS_org_xmlvm_iphone_NSError.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSError_userInfo__;
    __CLASS_org_xmlvm_iphone_NSError.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSError_description__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSError.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSError.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSError]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_NSError(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSError]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSError()
{
    if (!__CLASS_org_xmlvm_iphone_NSError.classInitialized) __INIT_org_xmlvm_iphone_NSError();
    org_xmlvm_iphone_NSError* me = (org_xmlvm_iphone_NSError*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSError));
    me->__class = &__CLASS_org_xmlvm_iphone_NSError;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSError]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSError);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSError()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_NSError___INIT____java_lang_String_int_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError___INIT____java_lang_String_int_java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSError_error___java_lang_String_int_java_util_Map(JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    if (!__CLASS_org_xmlvm_iphone_NSError.classInitialized) __INIT_org_xmlvm_iphone_NSError();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError_error___java_lang_String_int_java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSError_domain__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError_domain__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSError_code__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError_code__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSError_userInfo__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError_userInfo__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSError_description__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError_description__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

