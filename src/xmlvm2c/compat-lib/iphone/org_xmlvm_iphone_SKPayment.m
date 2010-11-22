#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_SKProduct.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_SKPayment.h"

__CLASS_DEFINITION_org_xmlvm_iphone_SKPayment __CLASS_org_xmlvm_iphone_SKPayment = {
    0, // classInitialized
    "org.xmlvm.iphone.SKPayment", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_SKPayment()
{
    __CLASS_org_xmlvm_iphone_SKPayment.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_SKPayment.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKPayment;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_SKPayment.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_SKPayment.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_SKPayment_getProductIdentifier__;
    __CLASS_org_xmlvm_iphone_SKPayment.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_SKPayment_getQuantity__;
    __CLASS_org_xmlvm_iphone_SKPayment.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_SKPayment_getRequestData__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_SKPayment.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_SKPayment.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKPayment]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_SKPayment(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKPayment]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKPayment()
{
    if (!__CLASS_org_xmlvm_iphone_SKPayment.classInitialized) __INIT_org_xmlvm_iphone_SKPayment();
    org_xmlvm_iphone_SKPayment* me = (org_xmlvm_iphone_SKPayment*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKPayment));
    me->__class = &__CLASS_org_xmlvm_iphone_SKPayment;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKPayment]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKPayment()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_SKPayment_paymentWithProduct___org_xmlvm_iphone_SKProduct(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_SKPayment.classInitialized) __INIT_org_xmlvm_iphone_SKPayment();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPayment_paymentWithProduct___org_xmlvm_iphone_SKProduct]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPayment_paymentWithProductIdentifier___java_lang_String(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_SKPayment.classInitialized) __INIT_org_xmlvm_iphone_SKPayment();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPayment_paymentWithProductIdentifier___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPayment_getProductIdentifier__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPayment_getProductIdentifier__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_SKPayment_getQuantity__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPayment_getQuantity__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPayment_getRequestData__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPayment_getRequestData__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

