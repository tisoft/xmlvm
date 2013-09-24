#include "xmlvm.h"

#include "org_xmlvm_iphone_CGImageAlphaInfo.h"

#define XMLVM_CURRENT_CLASS_NAME CGImageAlphaInfo
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGImageAlphaInfo

__TIB_DEFINITION_org_xmlvm_iphone_CGImageAlphaInfo __TIB_org_xmlvm_iphone_CGImageAlphaInfo = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CGImageAlphaInfo, // classInitializer
    "org.xmlvm.iphone.CGImageAlphaInfo", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_CGImageAlphaInfo), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGImageAlphaInfo;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGImageAlphaInfo_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGImageAlphaInfo_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGImageAlphaInfo_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNone;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaPremultipliedLast;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaPremultipliedFirst;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaLast;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaFirst;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNoneSkipLast;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNoneSkipFirst;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"kCGImageAlphaNone",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNone,
    "",
    JAVA_NULL},
    {"kCGImageAlphaPremultipliedLast",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaPremultipliedLast,
    "",
    JAVA_NULL},
    {"kCGImageAlphaPremultipliedFirst",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaPremultipliedFirst,
    "",
    JAVA_NULL},
    {"kCGImageAlphaLast",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaLast,
    "",
    JAVA_NULL},
    {"kCGImageAlphaFirst",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaFirst,
    "",
    JAVA_NULL},
    {"kCGImageAlphaNoneSkipLast",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNoneSkipLast,
    "",
    JAVA_NULL},
    {"kCGImageAlphaNoneSkipFirst",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNoneSkipFirst,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGImageAlphaInfo();
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

void __INIT_org_xmlvm_iphone_CGImageAlphaInfo()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CGImageAlphaInfo);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CGImageAlphaInfo.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CGImageAlphaInfo);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CGImageAlphaInfo.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CGImageAlphaInfo.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CGImageAlphaInfo.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.CGImageAlphaInfo")
        __INIT_IMPL_org_xmlvm_iphone_CGImageAlphaInfo();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CGImageAlphaInfo()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(java_lang_Object)
    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGImageAlphaInfo;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGImageAlphaInfo.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNone = 0;
    _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaPremultipliedLast = 1;
    _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaPremultipliedFirst = 2;
    _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaLast = 3;
    _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaFirst = 4;
    _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNoneSkipLast = 5;
    _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNoneSkipFirst = 6;

    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGImageAlphaInfo = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGImageAlphaInfo);
    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.clazz = __CLASS_org_xmlvm_iphone_CGImageAlphaInfo;
    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CGImageAlphaInfo_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGImageAlphaInfo);
    __CLASS_org_xmlvm_iphone_CGImageAlphaInfo_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGImageAlphaInfo_1ARRAY);
    __CLASS_org_xmlvm_iphone_CGImageAlphaInfo_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGImageAlphaInfo_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGImageAlphaInfo]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CGImageAlphaInfo.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CGImageAlphaInfo(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGImageAlphaInfo]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGImageAlphaInfo(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGImageAlphaInfo]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGImageAlphaInfo()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
org_xmlvm_iphone_CGImageAlphaInfo* me = (org_xmlvm_iphone_CGImageAlphaInfo*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGImageAlphaInfo));
    me->tib = &__TIB_org_xmlvm_iphone_CGImageAlphaInfo;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGImageAlphaInfo(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGImageAlphaInfo]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGImageAlphaInfo()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaNone()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
    return _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNone;
}

void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaNone(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNone = v;
}

JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaPremultipliedLast()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
    return _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaPremultipliedLast;
}

void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaPremultipliedLast(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaPremultipliedLast = v;
}

JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaPremultipliedFirst()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
    return _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaPremultipliedFirst;
}

void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaPremultipliedFirst(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaPremultipliedFirst = v;
}

JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaLast()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
    return _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaLast;
}

void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaLast(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaLast = v;
}

JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaFirst()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
    return _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaFirst;
}

void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaFirst(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaFirst = v;
}

JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaNoneSkipLast()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
    return _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNoneSkipLast;
}

void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaNoneSkipLast(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNoneSkipLast = v;
}

JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaNoneSkipFirst()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
    return _STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNoneSkipFirst;
}

void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaNoneSkipFirst(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGImageAlphaInfo)
_STATIC_org_xmlvm_iphone_CGImageAlphaInfo_kCGImageAlphaNoneSkipFirst = v;
}

