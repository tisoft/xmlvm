#include "xmlvm.h"

#include "org_xmlvm_iphone_NSURLRequestCachePolicy.h"

#define XMLVM_CURRENT_CLASS_NAME NSURLRequestCachePolicy
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSURLRequestCachePolicy

__TIB_DEFINITION_org_xmlvm_iphone_NSURLRequestCachePolicy __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy, // classInitializer
    "org.xmlvm.iphone.NSURLRequestCachePolicy", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_NSURLRequestCachePolicy), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequestCachePolicy;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequestCachePolicy_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequestCachePolicy_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequestCachePolicy_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_UseProtocolCachePolicy;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringLocalCacheData;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringLocalAndRemoteCacheData;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringCacheData;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReturnCacheDataElseLoad;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReturnCacheDataDontLoad;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadRevalidatingCacheData;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"UseProtocolCachePolicy",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_UseProtocolCachePolicy,
    "",
    JAVA_NULL},
    {"ReloadIgnoringLocalCacheData",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringLocalCacheData,
    "",
    JAVA_NULL},
    {"ReloadIgnoringLocalAndRemoteCacheData",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringLocalAndRemoteCacheData,
    "",
    JAVA_NULL},
    {"ReloadIgnoringCacheData",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringCacheData,
    "",
    JAVA_NULL},
    {"ReturnCacheDataElseLoad",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReturnCacheDataElseLoad,
    "",
    JAVA_NULL},
    {"ReturnCacheDataDontLoad",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReturnCacheDataDontLoad,
    "",
    JAVA_NULL},
    {"ReloadRevalidatingCacheData",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadRevalidatingCacheData,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSURLRequestCachePolicy();
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

void __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSURLRequestCachePolicy();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSURLRequestCachePolicy()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSURLRequestCachePolicy;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_UseProtocolCachePolicy = 0;
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringLocalCacheData = 1;
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringLocalAndRemoteCacheData = 4;
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringCacheData = 1;
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReturnCacheDataElseLoad = 2;
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReturnCacheDataDontLoad = 3;
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadRevalidatingCacheData = 5;

    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSURLRequestCachePolicy = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy);
    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.clazz = __CLASS_org_xmlvm_iphone_NSURLRequestCachePolicy;
    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSURLRequestCachePolicy_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLRequestCachePolicy);
    __CLASS_org_xmlvm_iphone_NSURLRequestCachePolicy_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLRequestCachePolicy_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSURLRequestCachePolicy_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLRequestCachePolicy_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSURLRequestCachePolicy]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSURLRequestCachePolicy(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSURLRequestCachePolicy]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLRequestCachePolicy(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLRequestCachePolicy]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLRequestCachePolicy()
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    org_xmlvm_iphone_NSURLRequestCachePolicy* me = (org_xmlvm_iphone_NSURLRequestCachePolicy*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSURLRequestCachePolicy));
    me->tib = &__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLRequestCachePolicy(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSURLRequestCachePolicy]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSURLRequestCachePolicy()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_NSURLRequestCachePolicy_GET_UseProtocolCachePolicy()
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    return _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_UseProtocolCachePolicy;
}

void org_xmlvm_iphone_NSURLRequestCachePolicy_PUT_UseProtocolCachePolicy(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_UseProtocolCachePolicy = v;
}

JAVA_INT org_xmlvm_iphone_NSURLRequestCachePolicy_GET_ReloadIgnoringLocalCacheData()
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    return _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringLocalCacheData;
}

void org_xmlvm_iphone_NSURLRequestCachePolicy_PUT_ReloadIgnoringLocalCacheData(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringLocalCacheData = v;
}

JAVA_INT org_xmlvm_iphone_NSURLRequestCachePolicy_GET_ReloadIgnoringLocalAndRemoteCacheData()
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    return _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringLocalAndRemoteCacheData;
}

void org_xmlvm_iphone_NSURLRequestCachePolicy_PUT_ReloadIgnoringLocalAndRemoteCacheData(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringLocalAndRemoteCacheData = v;
}

JAVA_INT org_xmlvm_iphone_NSURLRequestCachePolicy_GET_ReloadIgnoringCacheData()
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    return _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringCacheData;
}

void org_xmlvm_iphone_NSURLRequestCachePolicy_PUT_ReloadIgnoringCacheData(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadIgnoringCacheData = v;
}

JAVA_INT org_xmlvm_iphone_NSURLRequestCachePolicy_GET_ReturnCacheDataElseLoad()
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    return _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReturnCacheDataElseLoad;
}

void org_xmlvm_iphone_NSURLRequestCachePolicy_PUT_ReturnCacheDataElseLoad(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReturnCacheDataElseLoad = v;
}

JAVA_INT org_xmlvm_iphone_NSURLRequestCachePolicy_GET_ReturnCacheDataDontLoad()
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    return _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReturnCacheDataDontLoad;
}

void org_xmlvm_iphone_NSURLRequestCachePolicy_PUT_ReturnCacheDataDontLoad(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReturnCacheDataDontLoad = v;
}

JAVA_INT org_xmlvm_iphone_NSURLRequestCachePolicy_GET_ReloadRevalidatingCacheData()
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    return _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadRevalidatingCacheData;
}

void org_xmlvm_iphone_NSURLRequestCachePolicy_PUT_ReloadRevalidatingCacheData(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequestCachePolicy.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequestCachePolicy();
    _STATIC_org_xmlvm_iphone_NSURLRequestCachePolicy_ReloadRevalidatingCacheData = v;
}

