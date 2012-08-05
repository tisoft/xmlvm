#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CATransaction.h"

#define XMLVM_CURRENT_CLASS_NAME CATransaction
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CATransaction

__TIB_DEFINITION_org_xmlvm_iphone_CATransaction __TIB_org_xmlvm_iphone_CATransaction = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CATransaction, // classInitializer
    "org.xmlvm.iphone.CATransaction", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_CATransaction), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransaction;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransaction_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransaction_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransaction_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CATransaction();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CATransaction___INIT___(obj);
        break;
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
    &__CLASS_double,
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_java_lang_Object,
    &__CLASS_java_lang_String,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"begin",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"commit",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"flush",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"lock",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"unlock",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"animationDuration",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()D",
    JAVA_NULL,
    JAVA_NULL},
    {"setAnimationDuration",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(D)V",
    JAVA_NULL,
    JAVA_NULL},
    {"disableActions",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setDisableActions",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"completionBlock",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/Object;",
    JAVA_NULL,
    JAVA_NULL},
    {"setCompletionBlock",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"valueForKeyInCATransaction",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Ljava/lang/Object;",
    JAVA_NULL,
    JAVA_NULL},
    {"setValue",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_CATransaction_begin__();
        break;
    case 1:
        org_xmlvm_iphone_CATransaction_commit__();
        break;
    case 2:
        org_xmlvm_iphone_CATransaction_flush__();
        break;
    case 3:
        org_xmlvm_iphone_CATransaction_lock__();
        break;
    case 4:
        org_xmlvm_iphone_CATransaction_unlock__();
        break;
    case 5:
        conversion.d = (JAVA_DOUBLE) org_xmlvm_iphone_CATransaction_animationDuration__();
        result = __NEW_java_lang_Double();
        java_lang_Double___INIT____double(result, conversion.d);
        break;
    case 6:
        org_xmlvm_iphone_CATransaction_setAnimationDuration___double(((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 7:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CATransaction_disableActions__();
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 8:
        org_xmlvm_iphone_CATransaction_setDisableActions___boolean(((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 9:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CATransaction_completionBlock__();
        break;
    case 10:
        org_xmlvm_iphone_CATransaction_setCompletionBlock___java_lang_Object(argsArray[0]);
        break;
    case 11:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CATransaction_valueForKeyInCATransaction___java_lang_String(argsArray[0]);
        break;
    case 12:
        org_xmlvm_iphone_CATransaction_setValue___java_lang_Object_java_lang_String(argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CATransaction()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CATransaction);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CATransaction.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CATransaction.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CATransaction);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CATransaction.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CATransaction.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CATransaction();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CATransaction()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CATransaction.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CATransaction;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CATransaction.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CATransaction.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CATransaction.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CATransaction.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CATransaction.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CATransaction.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CATransaction.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CATransaction.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CATransaction.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CATransaction.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CATransaction.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CATransaction = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CATransaction);
    __TIB_org_xmlvm_iphone_CATransaction.clazz = __CLASS_org_xmlvm_iphone_CATransaction;
    __TIB_org_xmlvm_iphone_CATransaction.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CATransaction_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CATransaction);
    __CLASS_org_xmlvm_iphone_CATransaction_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CATransaction_1ARRAY);
    __CLASS_org_xmlvm_iphone_CATransaction_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CATransaction_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CATransaction]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CATransaction.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CATransaction(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CATransaction]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CATransaction(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CATransaction]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CATransaction()
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    org_xmlvm_iphone_CATransaction* me = (org_xmlvm_iphone_CATransaction*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CATransaction));
    me->tib = &__TIB_org_xmlvm_iphone_CATransaction;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CATransaction(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CATransaction]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CATransaction()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CATransaction();
    org_xmlvm_iphone_CATransaction___INIT___(me);
    return me;
}

void org_xmlvm_iphone_CATransaction_begin__()
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction_begin__]
    [CATransaction begin];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CATransaction_commit__()
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction_commit__]
    [CATransaction commit];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CATransaction_flush__()
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction_flush__]
    [CATransaction flush];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CATransaction_lock__()
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction_lock__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CATransaction_unlock__()
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction_unlock__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CATransaction_animationDuration__()
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction_animationDuration__]
    return [CATransaction animationDuration];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CATransaction_setAnimationDuration___double(JAVA_DOUBLE n1)
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction_setAnimationDuration___double]
    [CATransaction setAnimationDuration:n1];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CATransaction_disableActions__()
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction_disableActions__]
    return [CATransaction disableActions];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CATransaction_setDisableActions___boolean(JAVA_BOOLEAN n1)
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction_setDisableActions___boolean]
    [CATransaction setDisableActions:n1];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CATransaction_completionBlock__()
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction_completionBlock__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CATransaction_setCompletionBlock___java_lang_Object(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction_setCompletionBlock___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CATransaction_valueForKeyInCATransaction___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction_valueForKeyInCATransaction___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CATransaction_setValue___java_lang_Object_java_lang_String(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_CATransaction.classInitialized) __INIT_org_xmlvm_iphone_CATransaction();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction_setValue___java_lang_Object_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CATransaction___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransaction___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

