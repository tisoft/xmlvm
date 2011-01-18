#include "xmlvm.h"
#include "org_xmlvm_iphone_SKPaymentTransactionObserver.h"
#include "org_xmlvm_iphone_SKPayment.h"
#include "org_xmlvm_iphone_SKPaymentTransaction.h"

#include "org_xmlvm_iphone_SKPaymentQueue.h"

__TIB_DEFINITION_org_xmlvm_iphone_SKPaymentQueue __TIB_org_xmlvm_iphone_SKPaymentQueue = {
    0, // classInitialized
    "org.xmlvm.iphone.SKPaymentQueue", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentQueue;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentQueue_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_SKPaymentQueue();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

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

    __TIB_org_xmlvm_iphone_SKPaymentQueue.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentQueue.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_SKPaymentQueue.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_SKPaymentQueue.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentQueue.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_SKPaymentQueue = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_SKPaymentQueue);
    __TIB_org_xmlvm_iphone_SKPaymentQueue.clazz = __CLASS_org_xmlvm_iphone_SKPaymentQueue;
    __CLASS_org_xmlvm_iphone_SKPaymentQueue_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKPaymentQueue, 1);
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

