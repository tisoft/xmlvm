#include "xmlvm.h"

#include "org_xmlvm_iphone_CLDeviceOrientation.h"

#define XMLVM_CURRENT_CLASS_NAME CLDeviceOrientation
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CLDeviceOrientation

__TIB_DEFINITION_org_xmlvm_iphone_CLDeviceOrientation __TIB_org_xmlvm_iphone_CLDeviceOrientation = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CLDeviceOrientation, // classInitializer
    "org.xmlvm.iphone.CLDeviceOrientation", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_CLDeviceOrientation), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLDeviceOrientation;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLDeviceOrientation_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLDeviceOrientation_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLDeviceOrientation_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Unknown;
static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Portrait;
static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_PortraitUpsideDown;
static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeLeft;
static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeRight;
static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceUp;
static JAVA_INT _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceDown;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Unknown",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CLDeviceOrientation_Unknown,
    "",
    JAVA_NULL},
    {"Portrait",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CLDeviceOrientation_Portrait,
    "",
    JAVA_NULL},
    {"PortraitUpsideDown",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CLDeviceOrientation_PortraitUpsideDown,
    "",
    JAVA_NULL},
    {"LandscapeLeft",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeLeft,
    "",
    JAVA_NULL},
    {"LandscapeRight",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeRight,
    "",
    JAVA_NULL},
    {"FaceUp",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceUp,
    "",
    JAVA_NULL},
    {"FaceDown",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceDown,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CLDeviceOrientation();
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

void __INIT_org_xmlvm_iphone_CLDeviceOrientation()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CLDeviceOrientation);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CLDeviceOrientation);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CLDeviceOrientation.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CLDeviceOrientation.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CLDeviceOrientation();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CLDeviceOrientation()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_CLDeviceOrientation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLDeviceOrientation;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CLDeviceOrientation.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CLDeviceOrientation.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CLDeviceOrientation.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Unknown = 0;
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Portrait = 1;
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_PortraitUpsideDown = 2;
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeLeft = 3;
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeRight = 4;
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceUp = 5;
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceDown = 6;

    __TIB_org_xmlvm_iphone_CLDeviceOrientation.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLDeviceOrientation.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CLDeviceOrientation.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CLDeviceOrientation.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLDeviceOrientation.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CLDeviceOrientation.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CLDeviceOrientation.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLDeviceOrientation.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CLDeviceOrientation = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CLDeviceOrientation);
    __TIB_org_xmlvm_iphone_CLDeviceOrientation.clazz = __CLASS_org_xmlvm_iphone_CLDeviceOrientation;
    __TIB_org_xmlvm_iphone_CLDeviceOrientation.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CLDeviceOrientation_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLDeviceOrientation);
    __CLASS_org_xmlvm_iphone_CLDeviceOrientation_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLDeviceOrientation_1ARRAY);
    __CLASS_org_xmlvm_iphone_CLDeviceOrientation_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLDeviceOrientation_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLDeviceOrientation]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CLDeviceOrientation(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLDeviceOrientation]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLDeviceOrientation(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLDeviceOrientation()
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    org_xmlvm_iphone_CLDeviceOrientation* me = (org_xmlvm_iphone_CLDeviceOrientation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLDeviceOrientation));
    me->tib = &__TIB_org_xmlvm_iphone_CLDeviceOrientation;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLDeviceOrientation(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLDeviceOrientation]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLDeviceOrientation()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_Unknown()
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Unknown;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_Unknown(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Unknown = v;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_Portrait()
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Portrait;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_Portrait(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_Portrait = v;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_PortraitUpsideDown()
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_PortraitUpsideDown;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_PortraitUpsideDown(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_PortraitUpsideDown = v;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_LandscapeLeft()
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeLeft;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_LandscapeLeft(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeLeft = v;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_LandscapeRight()
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeRight;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_LandscapeRight(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_LandscapeRight = v;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_FaceUp()
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceUp;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_FaceUp(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceUp = v;
}

JAVA_INT org_xmlvm_iphone_CLDeviceOrientation_GET_FaceDown()
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    return _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceDown;
}

void org_xmlvm_iphone_CLDeviceOrientation_PUT_FaceDown(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CLDeviceOrientation.classInitialized) __INIT_org_xmlvm_iphone_CLDeviceOrientation();
    _STATIC_org_xmlvm_iphone_CLDeviceOrientation_FaceDown = v;
}

