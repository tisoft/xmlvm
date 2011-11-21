#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSDate.h"
#include "org_xmlvm_iphone_NSError.h"
#include "org_xmlvm_iphone_SKPayment.h"

#include "org_xmlvm_iphone_SKPaymentTransaction.h"

#define XMLVM_CURRENT_CLASS_NAME SKPaymentTransaction
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_SKPaymentTransaction

__TIB_DEFINITION_org_xmlvm_iphone_SKPaymentTransaction __TIB_org_xmlvm_iphone_SKPaymentTransaction = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_SKPaymentTransaction, // classInitializer
    "org.xmlvm.iphone.SKPaymentTransaction", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_SKPaymentTransaction), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransaction;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransaction_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransaction_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransaction_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_SKPaymentTransaction();
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
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getError",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getOriginalTransaction",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getPayment",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTransactionDate",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTransactionIdentifier",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTransactionReceipt",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTransactionState",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_SKPaymentTransaction_getError__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_SKPaymentTransaction_getOriginalTransaction__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_SKPaymentTransaction_getPayment__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_SKPaymentTransaction_getTransactionDate__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_SKPaymentTransaction_getTransactionIdentifier__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_SKPaymentTransaction_getTransactionReceipt__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_SKPaymentTransaction_getTransactionState__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_SKPaymentTransaction()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_SKPaymentTransaction);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_SKPaymentTransaction.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_SKPaymentTransaction);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_SKPaymentTransaction.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_SKPaymentTransaction.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_SKPaymentTransaction.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_SKPaymentTransaction();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_SKPaymentTransaction()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentTransaction;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKPaymentTransaction.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_SKPaymentTransaction.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_SKPaymentTransaction);
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.clazz = __CLASS_org_xmlvm_iphone_SKPaymentTransaction;
    __TIB_org_xmlvm_iphone_SKPaymentTransaction.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKPaymentTransaction);
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKPaymentTransaction_1ARRAY);
    __CLASS_org_xmlvm_iphone_SKPaymentTransaction_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKPaymentTransaction_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKPaymentTransaction]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_SKPaymentTransaction.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_SKPaymentTransaction(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKPaymentTransaction]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKPaymentTransaction(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKPaymentTransaction]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKPaymentTransaction()
{
    if (!__TIB_org_xmlvm_iphone_SKPaymentTransaction.classInitialized) __INIT_org_xmlvm_iphone_SKPaymentTransaction();
    org_xmlvm_iphone_SKPaymentTransaction* me = (org_xmlvm_iphone_SKPaymentTransaction*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKPaymentTransaction));
    me->tib = &__TIB_org_xmlvm_iphone_SKPaymentTransaction;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKPaymentTransaction(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKPaymentTransaction]
    //XMLVM_END_WRAPPER
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

