#include "xmlvm.h"

#include "org_xmlvm_iphone_NSOperationQueuePriority.h"

#define XMLVM_CURRENT_CLASS_NAME NSOperationQueuePriority
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSOperationQueuePriority

__TIB_DEFINITION_org_xmlvm_iphone_NSOperationQueuePriority __TIB_org_xmlvm_iphone_NSOperationQueuePriority = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSOperationQueuePriority, // classInitializer
    "org.xmlvm.iphone.NSOperationQueuePriority", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_NSOperationQueuePriority), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOperationQueuePriority;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOperationQueuePriority_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOperationQueuePriority_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOperationQueuePriority_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityVeryLow;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityLow;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityNormal;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityHigh;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityVeryHigh;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"NSOperationQueuePriorityVeryLow",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityVeryLow,
    "",
    JAVA_NULL},
    {"NSOperationQueuePriorityLow",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityLow,
    "",
    JAVA_NULL},
    {"NSOperationQueuePriorityNormal",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityNormal,
    "",
    JAVA_NULL},
    {"NSOperationQueuePriorityHigh",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityHigh,
    "",
    JAVA_NULL},
    {"NSOperationQueuePriorityVeryHigh",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityVeryHigh,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSOperationQueuePriority();
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
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSOperationQueuePriority()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSOperationQueuePriority);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSOperationQueuePriority);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSOperationQueuePriority.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSOperationQueuePriority.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSOperationQueuePriority();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSOperationQueuePriority()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSOperationQueuePriority;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSOperationQueuePriority.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityVeryLow = -8;
    _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityLow = -4;
    _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityNormal = 0;
    _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityHigh = 4;
    _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityVeryHigh = 8;

    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSOperationQueuePriority = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSOperationQueuePriority);
    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.clazz = __CLASS_org_xmlvm_iphone_NSOperationQueuePriority;
    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSOperationQueuePriority_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSOperationQueuePriority);
    __CLASS_org_xmlvm_iphone_NSOperationQueuePriority_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSOperationQueuePriority_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSOperationQueuePriority_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSOperationQueuePriority_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSOperationQueuePriority]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSOperationQueuePriority(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSOperationQueuePriority]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSOperationQueuePriority(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSOperationQueuePriority]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSOperationQueuePriority()
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueuePriority();
    org_xmlvm_iphone_NSOperationQueuePriority* me = (org_xmlvm_iphone_NSOperationQueuePriority*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSOperationQueuePriority));
    me->tib = &__TIB_org_xmlvm_iphone_NSOperationQueuePriority;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSOperationQueuePriority(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSOperationQueuePriority]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSOperationQueuePriority()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_NSOperationQueuePriority_GET_NSOperationQueuePriorityVeryLow()
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueuePriority();
    return _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityVeryLow;
}

void org_xmlvm_iphone_NSOperationQueuePriority_PUT_NSOperationQueuePriorityVeryLow(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueuePriority();
    _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityVeryLow = v;
}

JAVA_INT org_xmlvm_iphone_NSOperationQueuePriority_GET_NSOperationQueuePriorityLow()
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueuePriority();
    return _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityLow;
}

void org_xmlvm_iphone_NSOperationQueuePriority_PUT_NSOperationQueuePriorityLow(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueuePriority();
    _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityLow = v;
}

JAVA_INT org_xmlvm_iphone_NSOperationQueuePriority_GET_NSOperationQueuePriorityNormal()
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueuePriority();
    return _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityNormal;
}

void org_xmlvm_iphone_NSOperationQueuePriority_PUT_NSOperationQueuePriorityNormal(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueuePriority();
    _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityNormal = v;
}

JAVA_INT org_xmlvm_iphone_NSOperationQueuePriority_GET_NSOperationQueuePriorityHigh()
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueuePriority();
    return _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityHigh;
}

void org_xmlvm_iphone_NSOperationQueuePriority_PUT_NSOperationQueuePriorityHigh(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueuePriority();
    _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityHigh = v;
}

JAVA_INT org_xmlvm_iphone_NSOperationQueuePriority_GET_NSOperationQueuePriorityVeryHigh()
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueuePriority();
    return _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityVeryHigh;
}

void org_xmlvm_iphone_NSOperationQueuePriority_PUT_NSOperationQueuePriorityVeryHigh(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSOperationQueuePriority.classInitialized) __INIT_org_xmlvm_iphone_NSOperationQueuePriority();
    _STATIC_org_xmlvm_iphone_NSOperationQueuePriority_NSOperationQueuePriorityVeryHigh = v;
}

