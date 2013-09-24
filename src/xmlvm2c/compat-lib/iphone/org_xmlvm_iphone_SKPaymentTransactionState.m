#include "xmlvm.h"

#include "org_xmlvm_iphone_SKPaymentTransactionState.h"

#define XMLVM_CURRENT_CLASS_NAME SKPaymentTransactionState
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_SKPaymentTransactionState

__TIB_DEFINITION_org_xmlvm_iphone_SKPaymentTransactionState __TIB_org_xmlvm_iphone_SKPaymentTransactionState = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_SKPaymentTransactionState, // classInitializer
    "org.xmlvm.iphone.SKPaymentTransactionState", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_SKPaymentTransactionState), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransactionState;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransactionState_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransactionState_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPaymentTransactionState_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing;
static JAVA_INT _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased;
static JAVA_INT _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed;
static JAVA_INT _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Purchasing",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing,
    "",
    JAVA_NULL},
    {"Purchased",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased,
    "",
    JAVA_NULL},
    {"Failed",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed,
    "",
    JAVA_NULL},
    {"Restored",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_SKPaymentTransactionState();
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

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
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
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_SKPaymentTransactionState()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_SKPaymentTransactionState);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_SKPaymentTransactionState);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_SKPaymentTransactionState.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_SKPaymentTransactionState.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.SKPaymentTransactionState")
        __INIT_IMPL_org_xmlvm_iphone_SKPaymentTransactionState();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_SKPaymentTransactionState()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(java_lang_Object)
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentTransactionState;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKPaymentTransactionState.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing = 0;
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased = 1;
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed = 2;
    _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored = 3;

    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_SKPaymentTransactionState = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_SKPaymentTransactionState);
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.clazz = __CLASS_org_xmlvm_iphone_SKPaymentTransactionState;
    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_SKPaymentTransactionState_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKPaymentTransactionState);
    __CLASS_org_xmlvm_iphone_SKPaymentTransactionState_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKPaymentTransactionState_1ARRAY);
    __CLASS_org_xmlvm_iphone_SKPaymentTransactionState_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKPaymentTransactionState_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKPaymentTransactionState]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_SKPaymentTransactionState.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_SKPaymentTransactionState(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKPaymentTransactionState]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKPaymentTransactionState(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKPaymentTransactionState]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKPaymentTransactionState()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_SKPaymentTransactionState)
org_xmlvm_iphone_SKPaymentTransactionState* me = (org_xmlvm_iphone_SKPaymentTransactionState*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKPaymentTransactionState));
    me->tib = &__TIB_org_xmlvm_iphone_SKPaymentTransactionState;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKPaymentTransactionState(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKPaymentTransactionState]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKPaymentTransactionState()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Purchasing()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_SKPaymentTransactionState)
    return _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing;
}

void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Purchasing(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_SKPaymentTransactionState)
_STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchasing = v;
}

JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Purchased()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_SKPaymentTransactionState)
    return _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased;
}

void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Purchased(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_SKPaymentTransactionState)
_STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Purchased = v;
}

JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Failed()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_SKPaymentTransactionState)
    return _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed;
}

void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Failed(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_SKPaymentTransactionState)
_STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Failed = v;
}

JAVA_INT org_xmlvm_iphone_SKPaymentTransactionState_GET_Restored()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_SKPaymentTransactionState)
    return _STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored;
}

void org_xmlvm_iphone_SKPaymentTransactionState_PUT_Restored(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_SKPaymentTransactionState)
_STATIC_org_xmlvm_iphone_SKPaymentTransactionState_Restored = v;
}

