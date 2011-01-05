
#include "org_xmlvm_iphone_SKPaymentTransactionObserver.h"

__TIB_DEFINITION_org_xmlvm_iphone_SKPaymentTransactionObserver __TIB_org_xmlvm_iphone_SKPaymentTransactionObserver = {
    0, // classInitialized
    "org.xmlvm.iphone.SKPaymentTransactionObserver", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransactionObserver;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransactionObserver_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_SKPaymentTransactionObserver()
{
    __TIB_org_xmlvm_iphone_SKPaymentTransactionObserver.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_SKPaymentTransactionObserver.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentTransactionObserver;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKPaymentTransactionObserver.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_SKPaymentTransactionObserver.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransactionObserver_removedTransactions___org_xmlvm_iphone_SKPaymentQueue_java_util_ArrayList;
    __TIB_org_xmlvm_iphone_SKPaymentTransactionObserver.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransactionObserver_restoreCompletedTransactionsFailedWithError___org_xmlvm_iphone_SKPaymentQueue_org_xmlvm_iphone_NSError;
    __TIB_org_xmlvm_iphone_SKPaymentTransactionObserver.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_SKPaymentTransactionObserver_paymentQueueRestoreCompletedTransactionsFinished___org_xmlvm_iphone_SKPaymentQueue;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_SKPaymentTransactionObserver.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKPaymentTransactionObserver.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_SKPaymentTransactionObserver.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentTransactionObserver.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_SKPaymentTransactionObserver = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_SKPaymentTransactionObserver);
    __TIB_org_xmlvm_iphone_SKPaymentTransactionObserver.clazz = __CLASS_org_xmlvm_iphone_SKPaymentTransactionObserver;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKPaymentTransactionObserver]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_SKPaymentTransactionObserver(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKPaymentTransactionObserver]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKPaymentTransactionObserver()
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentTransactionObserver.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransactionObserver();
    org_xmlvm_iphone_SKPaymentTransactionObserver* me = (org_xmlvm_iphone_SKPaymentTransactionObserver*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKPaymentTransactionObserver));
    me->tib = &__TIB_org_xmlvm_iphone_SKPaymentTransactionObserver;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKPaymentTransactionObserver]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentTransactionObserver()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_SKPaymentTransactionObserver();
    org_xmlvm_iphone_SKPaymentTransactionObserver___INIT___(me);
    return me;
}

void org_xmlvm_iphone_SKPaymentTransactionObserver___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransactionObserver___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKPaymentTransactionObserver_removedTransactions___org_xmlvm_iphone_SKPaymentQueue_java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransactionObserver_removedTransactions___org_xmlvm_iphone_SKPaymentQueue_java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKPaymentTransactionObserver_restoreCompletedTransactionsFailedWithError___org_xmlvm_iphone_SKPaymentQueue_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransactionObserver_restoreCompletedTransactionsFailedWithError___org_xmlvm_iphone_SKPaymentQueue_org_xmlvm_iphone_NSError]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKPaymentTransactionObserver_paymentQueueRestoreCompletedTransactionsFinished___org_xmlvm_iphone_SKPaymentQueue(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentTransactionObserver_paymentQueueRestoreCompletedTransactionsFinished___org_xmlvm_iphone_SKPaymentQueue]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

