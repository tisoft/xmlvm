#include "xmlvm.h"

#include "org_xmlvm_iphone_MessageComposeResult.h"

#define XMLVM_CURRENT_CLASS_NAME MessageComposeResult
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MessageComposeResult

__TIB_DEFINITION_org_xmlvm_iphone_MessageComposeResult __TIB_org_xmlvm_iphone_MessageComposeResult = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_MessageComposeResult, // classInitializer
    "org.xmlvm.iphone.MessageComposeResult", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_MessageComposeResult), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MessageComposeResult;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MessageComposeResult_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MessageComposeResult_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MessageComposeResult_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_MessageComposeResult_Cancelled;
static JAVA_INT _STATIC_org_xmlvm_iphone_MessageComposeResult_Sent;
static JAVA_INT _STATIC_org_xmlvm_iphone_MessageComposeResult_Failed;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Cancelled",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MessageComposeResult_Cancelled,
    "",
    JAVA_NULL},
    {"Sent",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MessageComposeResult_Sent,
    "",
    JAVA_NULL},
    {"Failed",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MessageComposeResult_Failed,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MessageComposeResult();
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

void __INIT_org_xmlvm_iphone_MessageComposeResult()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_MessageComposeResult);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_MessageComposeResult.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_MessageComposeResult.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_MessageComposeResult);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_MessageComposeResult.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_MessageComposeResult.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_MessageComposeResult.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_MessageComposeResult();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_MessageComposeResult()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_MessageComposeResult.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MessageComposeResult;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MessageComposeResult.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_MessageComposeResult.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MessageComposeResult.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_MessageComposeResult_Cancelled = 0;
    _STATIC_org_xmlvm_iphone_MessageComposeResult_Sent = 1;
    _STATIC_org_xmlvm_iphone_MessageComposeResult_Failed = 2;

    __TIB_org_xmlvm_iphone_MessageComposeResult.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MessageComposeResult.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MessageComposeResult.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MessageComposeResult.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MessageComposeResult.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MessageComposeResult.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_MessageComposeResult.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_MessageComposeResult.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MessageComposeResult = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MessageComposeResult);
    __TIB_org_xmlvm_iphone_MessageComposeResult.clazz = __CLASS_org_xmlvm_iphone_MessageComposeResult;
    __TIB_org_xmlvm_iphone_MessageComposeResult.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_MessageComposeResult_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MessageComposeResult);
    __CLASS_org_xmlvm_iphone_MessageComposeResult_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MessageComposeResult_1ARRAY);
    __CLASS_org_xmlvm_iphone_MessageComposeResult_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MessageComposeResult_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MessageComposeResult]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_MessageComposeResult.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_MessageComposeResult(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MessageComposeResult]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MessageComposeResult(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MessageComposeResult()
{
    if (!__TIB_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    org_xmlvm_iphone_MessageComposeResult* me = (org_xmlvm_iphone_MessageComposeResult*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MessageComposeResult));
    me->tib = &__TIB_org_xmlvm_iphone_MessageComposeResult;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MessageComposeResult(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MessageComposeResult]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MessageComposeResult()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_MessageComposeResult_GET_Cancelled()
{
    if (!__TIB_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    return _STATIC_org_xmlvm_iphone_MessageComposeResult_Cancelled;
}

void org_xmlvm_iphone_MessageComposeResult_PUT_Cancelled(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    _STATIC_org_xmlvm_iphone_MessageComposeResult_Cancelled = v;
}

JAVA_INT org_xmlvm_iphone_MessageComposeResult_GET_Sent()
{
    if (!__TIB_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    return _STATIC_org_xmlvm_iphone_MessageComposeResult_Sent;
}

void org_xmlvm_iphone_MessageComposeResult_PUT_Sent(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    _STATIC_org_xmlvm_iphone_MessageComposeResult_Sent = v;
}

JAVA_INT org_xmlvm_iphone_MessageComposeResult_GET_Failed()
{
    if (!__TIB_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    return _STATIC_org_xmlvm_iphone_MessageComposeResult_Failed;
}

void org_xmlvm_iphone_MessageComposeResult_PUT_Failed(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MessageComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MessageComposeResult();
    _STATIC_org_xmlvm_iphone_MessageComposeResult_Failed = v;
}

