#include "org_xmlvm_iphone_SKProductsRequestDelegate.h"
#include "java_util_Set.h"

#include "org_xmlvm_iphone_SKProductsRequest.h"

__CLASS_DEFINITION_org_xmlvm_iphone_SKProductsRequest __CLASS_org_xmlvm_iphone_SKProductsRequest = {
    0, // classInitialized
    "org.xmlvm.iphone.SKProductsRequest", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_SKRequest, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_SKProductsRequest()
{
    __CLASS_org_xmlvm_iphone_SKProductsRequest.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_SKRequest.classInitialized) __INIT_org_xmlvm_iphone_SKRequest();
    __CLASS_org_xmlvm_iphone_SKProductsRequest.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKProductsRequest;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_SKProductsRequest.vtable, __CLASS_org_xmlvm_iphone_SKRequest.vtable, sizeof(__CLASS_org_xmlvm_iphone_SKRequest.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_SKProductsRequest.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_SKProductsRequest_getProductsDelegate__;
    __CLASS_org_xmlvm_iphone_SKProductsRequest.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_SKProductsRequest_setProductsDelegate___org_xmlvm_iphone_SKProductsRequestDelegate;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_SKProductsRequest.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_SKProductsRequest.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKProductsRequest]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_SKProductsRequest(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKProductsRequest]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKProductsRequest()
{
    if (!__CLASS_org_xmlvm_iphone_SKProductsRequest.classInitialized) __INIT_org_xmlvm_iphone_SKProductsRequest();
    org_xmlvm_iphone_SKProductsRequest* me = (org_xmlvm_iphone_SKProductsRequest*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKProductsRequest));
    me->__class = &__CLASS_org_xmlvm_iphone_SKProductsRequest;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKProductsRequest]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKProductsRequest()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_SKProductsRequest___INIT____java_util_Set(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsRequest___INIT____java_util_Set]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKProductsRequest_getProductsDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsRequest_getProductsDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKProductsRequest_setProductsDelegate___org_xmlvm_iphone_SKProductsRequestDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsRequest_setProductsDelegate___org_xmlvm_iphone_SKProductsRequestDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

