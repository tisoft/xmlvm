#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSError.h"
#include "org_xmlvm_iphone_SKPayment.h"
#include "org_xmlvm_iphone_NSDate.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_SKPaymentTransaction.h"

__CLASS_DEFINITION_org_xmlvm_iphone_SKPaymentTransaction __CLASS_org_xmlvm_iphone_SKPaymentTransaction = {
    0, // classInitialized
    "org.xmlvm.iphone.SKPaymentTransaction", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_SKPaymentTransaction()
{
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentTransaction;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_SKPaymentTransaction.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getError__;
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getOriginalTransaction__;
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getPayment__;
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getTransactionDate__;
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getTransactionIdentifier__;
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getTransactionReceipt__;
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransaction_getTransactionState__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKPaymentTransaction]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_SKPaymentTransaction(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKPaymentTransaction]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKPaymentTransaction()
{
    if (!__CLASS_org_xmlvm_iphone_SKPaymentTransaction.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransaction();
    org_xmlvm_iphone_SKPaymentTransaction* me = (org_xmlvm_iphone_SKPaymentTransaction*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKPaymentTransaction));
    me->__class = &__CLASS_org_xmlvm_iphone_SKPaymentTransaction;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKPaymentTransaction]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_SKPaymentTransaction);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentTransaction()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentTransaction_getError__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getError__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentTransaction_getOriginalTransaction__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getOriginalTransaction__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentTransaction_getPayment__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getPayment__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentTransaction_getTransactionDate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getTransactionDate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentTransaction_getTransactionIdentifier__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getTransactionIdentifier__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentTransaction_getTransactionReceipt__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getTransactionReceipt__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_SKPaymentTransaction_getTransactionState__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransaction_getTransactionState__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

