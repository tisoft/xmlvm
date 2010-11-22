#include "java_util_ArrayList.h"

#include "org_xmlvm_iphone_SKProductsResponse.h"

__CLASS_DEFINITION_org_xmlvm_iphone_SKProductsResponse __CLASS_org_xmlvm_iphone_SKProductsResponse = {
    0, // classInitialized
    "org.xmlvm.iphone.SKProductsResponse", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_SKProductsResponse()
{
    __CLASS_org_xmlvm_iphone_SKProductsResponse.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_SKProductsResponse.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKProductsResponse;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_SKProductsResponse.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_SKProductsResponse.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_SKProductsResponse_getInvalidProductIdentifiers__;
    __CLASS_org_xmlvm_iphone_SKProductsResponse.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_SKProductsResponse_getProducts__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_SKProductsResponse.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_SKProductsResponse.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKProductsResponse]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_SKProductsResponse(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKProductsResponse]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKProductsResponse()
{
    if (!__CLASS_org_xmlvm_iphone_SKProductsResponse.classInitialized) __INIT_org_xmlvm_iphone_SKProductsResponse();
    org_xmlvm_iphone_SKProductsResponse* me = (org_xmlvm_iphone_SKProductsResponse*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKProductsResponse));
    me->__class = &__CLASS_org_xmlvm_iphone_SKProductsResponse;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKProductsResponse]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_SKProductsResponse);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKProductsResponse()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_SKProductsResponse();
    org_xmlvm_iphone_SKProductsResponse___INIT___(me);
    return me;
}

void org_xmlvm_iphone_SKProductsResponse___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsResponse___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKProductsResponse_getInvalidProductIdentifiers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsResponse_getInvalidProductIdentifiers__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKProductsResponse_getProducts__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsResponse_getProducts__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

