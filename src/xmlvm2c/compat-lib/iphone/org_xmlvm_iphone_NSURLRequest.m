#include "org_xmlvm_iphone_NSURL.h"

#include "org_xmlvm_iphone_NSURLRequest.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSURLRequest __CLASS_org_xmlvm_iphone_NSURLRequest = {
    0, // classInitialized
    "org.xmlvm.iphone.NSURLRequest", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSURLRequest()
{
    __CLASS_org_xmlvm_iphone_NSURLRequest.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSURLRequest.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSURLRequest;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSURLRequest.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSURLRequest.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSURLRequest_URL__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSURLRequest.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSURLRequest.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSURLRequest]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSURLRequest(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSURLRequest]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLRequest()
{
    if (!__CLASS_org_xmlvm_iphone_NSURLRequest.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequest();
    org_xmlvm_iphone_NSURLRequest* me = (org_xmlvm_iphone_NSURLRequest*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSURLRequest));
    me->__class = &__CLASS_org_xmlvm_iphone_NSURLRequest;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSURLRequest]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSURLRequest()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSURLRequest_requestWithURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_NSURLRequest.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequest();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLRequest_requestWithURL___org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSURLRequest_URL__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLRequest_URL__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

