#include "org_xmlvm_iphone_NSURL.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSMutableURLRequest.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSMutableURLRequest __CLASS_org_xmlvm_iphone_NSMutableURLRequest = {
    0, // classInitialized
    "org.xmlvm.iphone.NSMutableURLRequest", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSMutableURLRequest()
{
    __CLASS_org_xmlvm_iphone_NSMutableURLRequest.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSMutableURLRequest.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSMutableURLRequest;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSMutableURLRequest.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSMutableURLRequest.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSMutableURLRequest_addValueForHTTPHeaderField___java_lang_String_java_lang_String;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSMutableURLRequest.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSMutableURLRequest.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSMutableURLRequest]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_NSMutableURLRequest(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSMutableURLRequest]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSMutableURLRequest()
{
    if (!__CLASS_org_xmlvm_iphone_NSMutableURLRequest.classInitialized) __INIT_org_xmlvm_iphone_NSMutableURLRequest();
    org_xmlvm_iphone_NSMutableURLRequest* me = (org_xmlvm_iphone_NSMutableURLRequest*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSMutableURLRequest));
    me->__class = &__CLASS_org_xmlvm_iphone_NSMutableURLRequest;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSMutableURLRequest]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSMutableURLRequest);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSMutableURLRequest()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_NSMutableURLRequest___INIT____org_xmlvm_iphone_NSURL(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableURLRequest___INIT____org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSMutableURLRequest_addValueForHTTPHeaderField___java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableURLRequest_addValueForHTTPHeaderField___java_lang_String_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

