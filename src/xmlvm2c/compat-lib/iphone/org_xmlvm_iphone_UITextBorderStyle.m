#include "xmlvm.h"

#include "org_xmlvm_iphone_UITextBorderStyle.h"

#define XMLVM_CURRENT_CLASS_NAME UITextBorderStyle
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITextBorderStyle

__TIB_DEFINITION_org_xmlvm_iphone_UITextBorderStyle __TIB_org_xmlvm_iphone_UITextBorderStyle = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UITextBorderStyle, // classInitializer
    "org.xmlvm.iphone.UITextBorderStyle", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UITextBorderStyle), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextBorderStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextBorderStyle_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextBorderStyle_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextBorderStyle_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITextBorderStyle_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITextBorderStyle_Line;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITextBorderStyle_Bezel;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITextBorderStyle_RoundedRect;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"None",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITextBorderStyle_None,
    "",
    JAVA_NULL},
    {"Line",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITextBorderStyle_Line,
    "",
    JAVA_NULL},
    {"Bezel",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITextBorderStyle_Bezel,
    "",
    JAVA_NULL},
    {"RoundedRect",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITextBorderStyle_RoundedRect,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITextBorderStyle();
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

void __INIT_org_xmlvm_iphone_UITextBorderStyle()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UITextBorderStyle);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UITextBorderStyle.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UITextBorderStyle.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UITextBorderStyle);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UITextBorderStyle.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UITextBorderStyle.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UITextBorderStyle.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UITextBorderStyle();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UITextBorderStyle()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UITextBorderStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITextBorderStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITextBorderStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UITextBorderStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITextBorderStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_None = 0;
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_Line = 1;
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_Bezel = 2;
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_RoundedRect = 3;

    __TIB_org_xmlvm_iphone_UITextBorderStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITextBorderStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITextBorderStyle.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITextBorderStyle.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITextBorderStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITextBorderStyle.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UITextBorderStyle.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITextBorderStyle.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITextBorderStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITextBorderStyle);
    __TIB_org_xmlvm_iphone_UITextBorderStyle.clazz = __CLASS_org_xmlvm_iphone_UITextBorderStyle;
    __TIB_org_xmlvm_iphone_UITextBorderStyle.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UITextBorderStyle_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITextBorderStyle);
    __CLASS_org_xmlvm_iphone_UITextBorderStyle_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITextBorderStyle_1ARRAY);
    __CLASS_org_xmlvm_iphone_UITextBorderStyle_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITextBorderStyle_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITextBorderStyle]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UITextBorderStyle.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UITextBorderStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITextBorderStyle]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITextBorderStyle(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITextBorderStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextBorderStyle()
{
    if (!__TIB_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    org_xmlvm_iphone_UITextBorderStyle* me = (org_xmlvm_iphone_UITextBorderStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITextBorderStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UITextBorderStyle;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITextBorderStyle(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITextBorderStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextBorderStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UITextBorderStyle_GET_None()
{
    if (!__TIB_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    return _STATIC_org_xmlvm_iphone_UITextBorderStyle_None;
}

void org_xmlvm_iphone_UITextBorderStyle_PUT_None(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_None = v;
}

JAVA_INT org_xmlvm_iphone_UITextBorderStyle_GET_Line()
{
    if (!__TIB_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    return _STATIC_org_xmlvm_iphone_UITextBorderStyle_Line;
}

void org_xmlvm_iphone_UITextBorderStyle_PUT_Line(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_Line = v;
}

JAVA_INT org_xmlvm_iphone_UITextBorderStyle_GET_Bezel()
{
    if (!__TIB_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    return _STATIC_org_xmlvm_iphone_UITextBorderStyle_Bezel;
}

void org_xmlvm_iphone_UITextBorderStyle_PUT_Bezel(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_Bezel = v;
}

JAVA_INT org_xmlvm_iphone_UITextBorderStyle_GET_RoundedRect()
{
    if (!__TIB_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    return _STATIC_org_xmlvm_iphone_UITextBorderStyle_RoundedRect;
}

void org_xmlvm_iphone_UITextBorderStyle_PUT_RoundedRect(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_RoundedRect = v;
}

