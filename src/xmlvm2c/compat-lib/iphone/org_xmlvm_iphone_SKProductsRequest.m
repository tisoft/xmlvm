#include "org_xmlvm_iphone_SKProductsRequestDelegate.h"

#include "org_xmlvm_iphone_SKProductsRequest.h"

__TIB_DEFINITION_org_xmlvm_iphone_SKProductsRequest __TIB_org_xmlvm_iphone_SKProductsRequest = {
    0, // classInitialized
    "org.xmlvm.iphone.SKProductsRequest", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_SKRequest, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsRequest;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsRequest_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_SKProductsRequest()
{
    __TIB_org_xmlvm_iphone_SKProductsRequest.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_SKRequest.classInitialized) __INIT_org_xmlvm_iphone_SKRequest();
    __TIB_org_xmlvm_iphone_SKProductsRequest.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKProductsRequest;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKProductsRequest.vtable, __TIB_org_xmlvm_iphone_SKRequest.vtable, sizeof(__TIB_org_xmlvm_iphone_SKRequest.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_SKProductsRequest.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_SKProductsRequest_getProductsDelegate__;
    __TIB_org_xmlvm_iphone_SKProductsRequest.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_SKProductsRequest_setProductsDelegate___org_xmlvm_iphone_SKProductsRequestDelegate;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_SKProductsRequest.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKProductsRequest.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_SKProductsRequest.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKProductsRequest.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_SKProductsRequest = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_SKProductsRequest);
    __TIB_org_xmlvm_iphone_SKProductsRequest.clazz = __CLASS_org_xmlvm_iphone_SKProductsRequest;

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
    if (!__TIB_org_xmlvm_iphone_SKProductsRequest.classInitialized) __INIT_org_xmlvm_iphone_SKProductsRequest();
    org_xmlvm_iphone_SKProductsRequest* me = (org_xmlvm_iphone_SKProductsRequest*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKProductsRequest));
    me->tib = &__TIB_org_xmlvm_iphone_SKProductsRequest;
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

