#include "org_xmlvm_iphone_SKRequestDelegate.h"

#include "org_xmlvm_iphone_SKRequest.h"

__TIB_DEFINITION_org_xmlvm_iphone_SKRequest __TIB_org_xmlvm_iphone_SKRequest = {
    0, // classInitialized
    "org.xmlvm.iphone.SKRequest", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_SKRequest()
{
    __TIB_org_xmlvm_iphone_SKRequest.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_SKRequest.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKRequest;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKRequest.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_SKRequest.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_SKRequest_start__;
    __TIB_org_xmlvm_iphone_SKRequest.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_SKRequest_cancel__;
    __TIB_org_xmlvm_iphone_SKRequest.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_SKRequest_getDelegate__;
    __TIB_org_xmlvm_iphone_SKRequest.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_SKRequest_setDelegate___org_xmlvm_iphone_SKRequestDelegate;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_SKRequest.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKRequest.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKRequest]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_SKRequest(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKRequest]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKRequest()
{
    if (!__TIB_org_xmlvm_iphone_SKRequest.classInitialized) __INIT_org_xmlvm_iphone_SKRequest();
    org_xmlvm_iphone_SKRequest* me = (org_xmlvm_iphone_SKRequest*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKRequest));
    me->tib = &__TIB_org_xmlvm_iphone_SKRequest;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKRequest]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKRequest()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_SKRequest();
    org_xmlvm_iphone_SKRequest___INIT___(me);
    return me;
}

void org_xmlvm_iphone_SKRequest___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKRequest___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKRequest_start__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKRequest_start__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKRequest_cancel__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKRequest_cancel__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKRequest_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKRequest_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKRequest_setDelegate___org_xmlvm_iphone_SKRequestDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKRequest_setDelegate___org_xmlvm_iphone_SKRequestDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

