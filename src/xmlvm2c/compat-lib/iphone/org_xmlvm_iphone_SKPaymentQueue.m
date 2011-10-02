#include "xmlvm.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_SKPayment.h"
#include "org_xmlvm_iphone_SKPaymentTransaction.h"
#include "org_xmlvm_iphone_SKPaymentTransactionObserver.h"

#include "org_xmlvm_iphone_SKPaymentQueue.h"

#define XMLVM_CURRENT_CLASS_NAME SKPaymentQueue
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_SKPaymentQueue

__TIB_DEFINITION_org_xmlvm_iphone_SKPaymentQueue __TIB_org_xmlvm_iphone_SKPaymentQueue = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_SKPaymentQueue, // classInitializer
    "org.xmlvm.iphone.SKPaymentQueue", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_SKPaymentQueue), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentQueue;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentQueue_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentQueue_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentQueue_3ARRAY;
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

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_SKPaymentTransactionObserver,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_SKPaymentTransactionObserver,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_SKPayment,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_SKPaymentTransaction,
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"canMakePayments",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"defaultQueue",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"addTransactionObserver",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"removeTransactionObserver",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTransactions",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"addPayment",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"finishTransaction",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"restoreCompletedTransactions",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_SKPaymentQueue_canMakePayments__();
        break;
    case 1:
        org_xmlvm_iphone_SKPaymentQueue_defaultQueue__();
        break;
    case 2:
        org_xmlvm_iphone_SKPaymentQueue_addTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_SKPaymentQueue_removeTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver(receiver, argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_SKPaymentQueue_getTransactions__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_SKPaymentQueue_addPayment___org_xmlvm_iphone_SKPayment(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_SKPaymentQueue_finishTransaction___org_xmlvm_iphone_SKPaymentTransaction(receiver, argsArray[0]);
        break;
    case 7:
        org_xmlvm_iphone_SKPaymentQueue_restoreCompletedTransactions__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_SKPaymentQueue()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_SKPaymentQueue);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_SKPaymentQueue.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_SKPaymentQueue.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_SKPaymentQueue);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_SKPaymentQueue.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_SKPaymentQueue.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_SKPaymentQueue.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_SKPaymentQueue();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_SKPaymentQueue()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_SKPaymentQueue.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentQueue;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKPaymentQueue.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_SKPaymentQueue.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKPaymentQueue.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_SKPaymentQueue.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentQueue.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_SKPaymentQueue.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_SKPaymentQueue.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentQueue.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_SKPaymentQueue.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_SKPaymentQueue.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentQueue.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_SKPaymentQueue = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_SKPaymentQueue);
    __TIB_org_xmlvm_iphone_SKPaymentQueue.clazz = __CLASS_org_xmlvm_iphone_SKPaymentQueue;
    __TIB_org_xmlvm_iphone_SKPaymentQueue.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_SKPaymentQueue_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKPaymentQueue);
    __CLASS_org_xmlvm_iphone_SKPaymentQueue_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKPaymentQueue_1ARRAY);
    __CLASS_org_xmlvm_iphone_SKPaymentQueue_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKPaymentQueue_2ARRAY);
    org_xmlvm_iphone_SKPaymentQueue___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKPaymentQueue]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_SKPaymentQueue.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_SKPaymentQueue(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKPaymentQueue]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKPaymentQueue(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKPaymentQueue]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKPaymentQueue()
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentQueue.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentQueue();
    org_xmlvm_iphone_SKPaymentQueue* me = (org_xmlvm_iphone_SKPaymentQueue*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKPaymentQueue));
    me->tib = &__TIB_org_xmlvm_iphone_SKPaymentQueue;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKPaymentQueue(me, 0);
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
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPaymentQueue___CLINIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

