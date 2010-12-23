#include "java_util_ArrayList.h"

#include "org_xmlvm_iphone_SKPaymentQueue.h"

__TIB_DEFINITION_org_xmlvm_iphone_SKPaymentQueue __TIB_org_xmlvm_iphone_SKPaymentQueue = {
    0, // classInitialized
    "org.xmlvm.iphone.SKPaymentQueue", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_SKPaymentQueue()
{
    __TIB_org_xmlvm_iphone_SKPaymentQueue.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_SKPaymentQueue.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentQueue;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKPaymentQueue.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_SKPaymentQueue.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentQueue_addTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver;
    __TIB_org_xmlvm_iphone_SKPaymentQueue.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentQueue_removeTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver;
    __TIB_org_xmlvm_iphone_SKPaymentQueue.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentQueue_getTransactions__;
    __TIB_org_xmlvm_iphone_SKPaymentQueue.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentQueue_addPayment___org_xmlvm_iphone_SKPayment;
    __TIB_org_xmlvm_iphone_SKPaymentQueue.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentQueue_finishTransaction___org_xmlvm_iphone_SKPaymentTransaction;
    __TIB_org_xmlvm_iphone_SKPaymentQueue.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentQueue_restoreCompletedTransactions__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_SKPaymentQueue.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKPaymentQueue.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    org_xmlvm_iphone_SKPaymentQueue___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKPaymentQueue]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_SKPaymentQueue(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKPaymentQueue]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKPaymentQueue()
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentQueue.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentQueue();
    org_xmlvm_iphone_SKPaymentQueue* me = (org_xmlvm_iphone_SKPaymentQueue*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKPaymentQueue));
    me->tib = &__TIB_org_xmlvm_iphone_SKPaymentQueue;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKPaymentQueue]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentQueue()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_BOOLEAN org_xmlvm_iphone_SKPaymentQueue_canMakePayments__()
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentQueue.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentQueue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentQueue_canMakePayments__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentQueue_defaultQueue__()
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentQueue.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentQueue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentQueue_defaultQueue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKPaymentQueue_addTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentQueue_addTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKPaymentQueue_removeTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentQueue_removeTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPaymentQueue_getTransactions__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentQueue_getTransactions__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKPaymentQueue_addPayment___org_xmlvm_iphone_SKPayment(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentQueue_addPayment___org_xmlvm_iphone_SKPayment]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKPaymentQueue_finishTransaction___org_xmlvm_iphone_SKPaymentTransaction(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentQueue_finishTransaction___org_xmlvm_iphone_SKPaymentTransaction]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKPaymentQueue_restoreCompletedTransactions__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentQueue_restoreCompletedTransactions__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKPaymentQueue___CLINIT_()
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentQueue.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentQueue();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentQueue___CLINIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

