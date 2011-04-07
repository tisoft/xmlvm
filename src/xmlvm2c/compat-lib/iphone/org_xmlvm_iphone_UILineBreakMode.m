#include "xmlvm.h"

#include "org_xmlvm_iphone_UILineBreakMode.h"

#define XMLVM_CURRENT_CLASS_NAME UILineBreakMode
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UILineBreakMode

__TIB_DEFINITION_org_xmlvm_iphone_UILineBreakMode __TIB_org_xmlvm_iphone_UILineBreakMode = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UILineBreakMode, // classInitializer
    "org.xmlvm.iphone.UILineBreakMode", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UILineBreakMode), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILineBreakMode;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILineBreakMode_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILineBreakMode_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILineBreakMode_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UILineBreakMode_WordWrap;
static JAVA_INT _STATIC_org_xmlvm_iphone_UILineBreakMode_CharacterWrap;
static JAVA_INT _STATIC_org_xmlvm_iphone_UILineBreakMode_HeadTruncation;
static JAVA_INT _STATIC_org_xmlvm_iphone_UILineBreakMode_Clip;
static JAVA_INT _STATIC_org_xmlvm_iphone_UILineBreakMode_TailTruncation;
static JAVA_INT _STATIC_org_xmlvm_iphone_UILineBreakMode_MiddleTruncation;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"WordWrap",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UILineBreakMode_WordWrap,
    "",
    JAVA_NULL},
    {"CharacterWrap",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UILineBreakMode_CharacterWrap,
    "",
    JAVA_NULL},
    {"HeadTruncation",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UILineBreakMode_HeadTruncation,
    "",
    JAVA_NULL},
    {"Clip",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UILineBreakMode_Clip,
    "",
    JAVA_NULL},
    {"TailTruncation",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UILineBreakMode_TailTruncation,
    "",
    JAVA_NULL},
    {"MiddleTruncation",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UILineBreakMode_MiddleTruncation,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UILineBreakMode();
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

void __INIT_org_xmlvm_iphone_UILineBreakMode()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UILineBreakMode);
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UILineBreakMode();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UILineBreakMode);
}

void __INIT_IMPL_org_xmlvm_iphone_UILineBreakMode()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UILineBreakMode.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_java_lang_Object.classInitialized) __INIT_IMPL_java_lang_Object();
        __TIB_org_xmlvm_iphone_UILineBreakMode.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UILineBreakMode;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UILineBreakMode.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
        // Initialize vtable for this class
        // Initialize interface information
        __TIB_org_xmlvm_iphone_UILineBreakMode.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UILineBreakMode.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces
        _STATIC_org_xmlvm_iphone_UILineBreakMode_WordWrap = 0;
        _STATIC_org_xmlvm_iphone_UILineBreakMode_CharacterWrap = 1;
        _STATIC_org_xmlvm_iphone_UILineBreakMode_HeadTruncation = 3;
        _STATIC_org_xmlvm_iphone_UILineBreakMode_Clip = 2;
        _STATIC_org_xmlvm_iphone_UILineBreakMode_TailTruncation = 4;
        _STATIC_org_xmlvm_iphone_UILineBreakMode_MiddleTruncation = 5;

        __TIB_org_xmlvm_iphone_UILineBreakMode.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UILineBreakMode.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UILineBreakMode.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UILineBreakMode.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UILineBreakMode.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UILineBreakMode.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UILineBreakMode.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UILineBreakMode.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UILineBreakMode = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UILineBreakMode);
        __TIB_org_xmlvm_iphone_UILineBreakMode.clazz = __CLASS_org_xmlvm_iphone_UILineBreakMode;
        __TIB_org_xmlvm_iphone_UILineBreakMode.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_UILineBreakMode_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UILineBreakMode);
        __CLASS_org_xmlvm_iphone_UILineBreakMode_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UILineBreakMode_1ARRAY);
        __CLASS_org_xmlvm_iphone_UILineBreakMode_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UILineBreakMode_2ARRAY);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UILineBreakMode]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UILineBreakMode(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UILineBreakMode]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UILineBreakMode(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UILineBreakMode()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    org_xmlvm_iphone_UILineBreakMode* me = (org_xmlvm_iphone_UILineBreakMode*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UILineBreakMode));
    me->tib = &__TIB_org_xmlvm_iphone_UILineBreakMode;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UILineBreakMode(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UILineBreakMode]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UILineBreakMode()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UILineBreakMode_GET_WordWrap()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    return _STATIC_org_xmlvm_iphone_UILineBreakMode_WordWrap;
}

void org_xmlvm_iphone_UILineBreakMode_PUT_WordWrap(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    _STATIC_org_xmlvm_iphone_UILineBreakMode_WordWrap = v;
}

JAVA_INT org_xmlvm_iphone_UILineBreakMode_GET_CharacterWrap()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    return _STATIC_org_xmlvm_iphone_UILineBreakMode_CharacterWrap;
}

void org_xmlvm_iphone_UILineBreakMode_PUT_CharacterWrap(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    _STATIC_org_xmlvm_iphone_UILineBreakMode_CharacterWrap = v;
}

JAVA_INT org_xmlvm_iphone_UILineBreakMode_GET_HeadTruncation()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    return _STATIC_org_xmlvm_iphone_UILineBreakMode_HeadTruncation;
}

void org_xmlvm_iphone_UILineBreakMode_PUT_HeadTruncation(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    _STATIC_org_xmlvm_iphone_UILineBreakMode_HeadTruncation = v;
}

JAVA_INT org_xmlvm_iphone_UILineBreakMode_GET_Clip()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    return _STATIC_org_xmlvm_iphone_UILineBreakMode_Clip;
}

void org_xmlvm_iphone_UILineBreakMode_PUT_Clip(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    _STATIC_org_xmlvm_iphone_UILineBreakMode_Clip = v;
}

JAVA_INT org_xmlvm_iphone_UILineBreakMode_GET_TailTruncation()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    return _STATIC_org_xmlvm_iphone_UILineBreakMode_TailTruncation;
}

void org_xmlvm_iphone_UILineBreakMode_PUT_TailTruncation(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    _STATIC_org_xmlvm_iphone_UILineBreakMode_TailTruncation = v;
}

JAVA_INT org_xmlvm_iphone_UILineBreakMode_GET_MiddleTruncation()
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    return _STATIC_org_xmlvm_iphone_UILineBreakMode_MiddleTruncation;
}

void org_xmlvm_iphone_UILineBreakMode_PUT_MiddleTruncation(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UILineBreakMode.classInitialized) __INIT_org_xmlvm_iphone_UILineBreakMode();
    _STATIC_org_xmlvm_iphone_UILineBreakMode_MiddleTruncation = v;
}

