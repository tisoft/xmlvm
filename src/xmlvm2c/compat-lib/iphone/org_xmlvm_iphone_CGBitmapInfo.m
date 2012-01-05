#include "xmlvm.h"

#include "org_xmlvm_iphone_CGBitmapInfo.h"

#define XMLVM_CURRENT_CLASS_NAME CGBitmapInfo
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGBitmapInfo

__TIB_DEFINITION_org_xmlvm_iphone_CGBitmapInfo __TIB_org_xmlvm_iphone_CGBitmapInfo = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CGBitmapInfo, // classInitializer
    "org.xmlvm.iphone.CGBitmapInfo", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_CGBitmapInfo), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapInfo;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapInfo_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapInfo_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapInfo_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapAlphaInfoMask;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapFloatComponents;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrderMask;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrderDefault;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder16Little;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder32Little;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder16Big;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder32Big;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"kCGBitmapAlphaInfoMask",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapAlphaInfoMask,
    "",
    JAVA_NULL},
    {"kCGBitmapFloatComponents",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapFloatComponents,
    "",
    JAVA_NULL},
    {"kCGBitmapByteOrderMask",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrderMask,
    "",
    JAVA_NULL},
    {"kCGBitmapByteOrderDefault",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrderDefault,
    "",
    JAVA_NULL},
    {"kCGBitmapByteOrder16Little",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder16Little,
    "",
    JAVA_NULL},
    {"kCGBitmapByteOrder32Little",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder32Little,
    "",
    JAVA_NULL},
    {"kCGBitmapByteOrder16Big",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder16Big,
    "",
    JAVA_NULL},
    {"kCGBitmapByteOrder32Big",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder32Big,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGBitmapInfo();
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

void __INIT_org_xmlvm_iphone_CGBitmapInfo()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CGBitmapInfo);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CGBitmapInfo.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CGBitmapInfo.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CGBitmapInfo);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CGBitmapInfo.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CGBitmapInfo.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CGBitmapInfo();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CGBitmapInfo()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_CGBitmapInfo.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGBitmapInfo;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGBitmapInfo.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CGBitmapInfo.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGBitmapInfo.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapAlphaInfoMask = 31;
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapFloatComponents = 256;
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrderMask = 28672;
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrderDefault = 0;
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder16Little = 4096;
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder32Little = 8192;
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder16Big = 12288;
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder32Big = 16384;

    __TIB_org_xmlvm_iphone_CGBitmapInfo.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGBitmapInfo.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGBitmapInfo.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CGBitmapInfo.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGBitmapInfo.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGBitmapInfo.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CGBitmapInfo.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGBitmapInfo.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGBitmapInfo = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGBitmapInfo);
    __TIB_org_xmlvm_iphone_CGBitmapInfo.clazz = __CLASS_org_xmlvm_iphone_CGBitmapInfo;
    __TIB_org_xmlvm_iphone_CGBitmapInfo.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CGBitmapInfo_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGBitmapInfo);
    __CLASS_org_xmlvm_iphone_CGBitmapInfo_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGBitmapInfo_1ARRAY);
    __CLASS_org_xmlvm_iphone_CGBitmapInfo_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGBitmapInfo_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGBitmapInfo]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CGBitmapInfo(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGBitmapInfo]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapInfo(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapInfo]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGBitmapInfo()
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    org_xmlvm_iphone_CGBitmapInfo* me = (org_xmlvm_iphone_CGBitmapInfo*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGBitmapInfo));
    me->tib = &__TIB_org_xmlvm_iphone_CGBitmapInfo;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapInfo(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGBitmapInfo]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGBitmapInfo()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapAlphaInfoMask()
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    return _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapAlphaInfoMask;
}

void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapAlphaInfoMask(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapAlphaInfoMask = v;
}

JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapFloatComponents()
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    return _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapFloatComponents;
}

void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapFloatComponents(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapFloatComponents = v;
}

JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapByteOrderMask()
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    return _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrderMask;
}

void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapByteOrderMask(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrderMask = v;
}

JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapByteOrderDefault()
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    return _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrderDefault;
}

void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapByteOrderDefault(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrderDefault = v;
}

JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapByteOrder16Little()
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    return _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder16Little;
}

void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapByteOrder16Little(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder16Little = v;
}

JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapByteOrder32Little()
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    return _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder32Little;
}

void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapByteOrder32Little(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder32Little = v;
}

JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapByteOrder16Big()
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    return _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder16Big;
}

void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapByteOrder16Big(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder16Big = v;
}

JAVA_INT org_xmlvm_iphone_CGBitmapInfo_GET_kCGBitmapByteOrder32Big()
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    return _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder32Big;
}

void org_xmlvm_iphone_CGBitmapInfo_PUT_kCGBitmapByteOrder32Big(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapInfo.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapInfo();
    _STATIC_org_xmlvm_iphone_CGBitmapInfo_kCGBitmapByteOrder32Big = v;
}

