#include "xmlvm.h"

#include "org_xmlvm_iphone_UIViewContentMode.h"

// Include implemented interfaces

#define XMLVM_CURRENT_CLASS_NAME UIViewContentMode
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIViewContentMode

__TIB_DEFINITION_org_xmlvm_iphone_UIViewContentMode __TIB_org_xmlvm_iphone_UIViewContentMode = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIViewContentMode, // classInitializer
    "org.xmlvm.iphone.UIViewContentMode", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIViewContentMode), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewContentMode;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewContentMode_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewContentMode_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewContentMode_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleToFill;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFit;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFill;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_Redraw;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_Center;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_Top;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_Bottom;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_Left;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_Right;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_TopLeft;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_TopRight;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomLeft;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomRight;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"ScaleToFill",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleToFill,
    "",
    JAVA_NULL},
    {"ScaleAspectFit",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFit,
    "",
    JAVA_NULL},
    {"ScaleAspectFill",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFill,
    "",
    JAVA_NULL},
    {"Redraw",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewContentMode_Redraw,
    "",
    JAVA_NULL},
    {"Center",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewContentMode_Center,
    "",
    JAVA_NULL},
    {"Top",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewContentMode_Top,
    "",
    JAVA_NULL},
    {"Bottom",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewContentMode_Bottom,
    "",
    JAVA_NULL},
    {"Left",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewContentMode_Left,
    "",
    JAVA_NULL},
    {"Right",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewContentMode_Right,
    "",
    JAVA_NULL},
    {"TopLeft",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewContentMode_TopLeft,
    "",
    JAVA_NULL},
    {"TopRight",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewContentMode_TopRight,
    "",
    JAVA_NULL},
    {"BottomLeft",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewContentMode_BottomLeft,
    "",
    JAVA_NULL},
    {"BottomRight",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewContentMode_BottomRight,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIViewContentMode();
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

void __INIT_org_xmlvm_iphone_UIViewContentMode()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIViewContentMode);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIViewContentMode.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIViewContentMode.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIViewContentMode);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIViewContentMode.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIViewContentMode.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIViewContentMode();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIViewContentMode()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIViewContentMode.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewContentMode;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIViewContentMode.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIViewContentMode.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIViewContentMode.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleToFill = 0;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFit = 1;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFill = 2;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Redraw = 3;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Center = 4;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Top = 5;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Bottom = 6;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Left = 7;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Right = 8;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_TopLeft = 9;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_TopRight = 10;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomLeft = 11;
    _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomRight = 12;

    __TIB_org_xmlvm_iphone_UIViewContentMode.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewContentMode.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewContentMode.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewContentMode.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewContentMode.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewContentMode.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewContentMode.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewContentMode.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIViewContentMode = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIViewContentMode);
    __TIB_org_xmlvm_iphone_UIViewContentMode.clazz = __CLASS_org_xmlvm_iphone_UIViewContentMode;
    __TIB_org_xmlvm_iphone_UIViewContentMode.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIViewContentMode_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewContentMode);
    __CLASS_org_xmlvm_iphone_UIViewContentMode_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewContentMode_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIViewContentMode_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewContentMode_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewContentMode]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIViewContentMode(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewContentMode]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewContentMode(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewContentMode]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewContentMode()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    org_xmlvm_iphone_UIViewContentMode* me = (org_xmlvm_iphone_UIViewContentMode*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewContentMode));
    me->tib = &__TIB_org_xmlvm_iphone_UIViewContentMode;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewContentMode(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIViewContentMode]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewContentMode()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_ScaleToFill()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleToFill;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_ScaleToFill(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleToFill = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_ScaleAspectFit()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFit;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_ScaleAspectFit(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFit = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_ScaleAspectFill()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFill;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_ScaleAspectFill(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_ScaleAspectFill = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Redraw()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_Redraw;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_Redraw(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Redraw = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Center()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_Center;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_Center(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Center = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Top()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_Top;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_Top(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Top = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Bottom()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_Bottom;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_Bottom(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Bottom = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Left()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_Left;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_Left(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Left = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_Right()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_Right;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_Right(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_Right = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_TopLeft()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_TopLeft;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_TopLeft(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_TopLeft = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_TopRight()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_TopRight;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_TopRight(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_TopRight = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_BottomLeft()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomLeft;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_BottomLeft(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomLeft = v;
}

JAVA_INT org_xmlvm_iphone_UIViewContentMode_GET_BottomRight()
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    return _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomRight;
}

void org_xmlvm_iphone_UIViewContentMode_PUT_BottomRight(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewContentMode.classInitialized) __INIT_org_xmlvm_iphone_UIViewContentMode();
    _STATIC_org_xmlvm_iphone_UIViewContentMode_BottomRight = v;
}

