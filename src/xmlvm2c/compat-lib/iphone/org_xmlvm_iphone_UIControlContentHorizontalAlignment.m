#include "xmlvm.h"

#include "org_xmlvm_iphone_UIControlContentHorizontalAlignment.h"

#define XMLVM_CURRENT_CLASS_NAME UIControlContentHorizontalAlignment
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIControlContentHorizontalAlignment

__TIB_DEFINITION_org_xmlvm_iphone_UIControlContentHorizontalAlignment __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIControlContentHorizontalAlignment, // classInitializer
    "org.xmlvm.iphone.UIControlContentHorizontalAlignment", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIControlContentHorizontalAlignment), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlContentHorizontalAlignment;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlContentHorizontalAlignment_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlContentHorizontalAlignment_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlContentHorizontalAlignment_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Center;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Left;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Right;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Fill;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Center",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Center,
    "",
    JAVA_NULL},
    {"Left",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Left,
    "",
    JAVA_NULL},
    {"Right",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Right,
    "",
    JAVA_NULL},
    {"Fill",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Fill,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIControlContentHorizontalAlignment();
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

void __INIT_org_xmlvm_iphone_UIControlContentHorizontalAlignment()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment);
    if (!__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UIControlContentHorizontalAlignment();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment);
}

void __INIT_IMPL_org_xmlvm_iphone_UIControlContentHorizontalAlignment()
{
    if (!__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_java_lang_Object.classInitialized) __INIT_IMPL_java_lang_Object();
        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIControlContentHorizontalAlignment;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
        // Initialize vtable for this class
        // Initialize interface information
        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces
        _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Center = 0;
        _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Left = 1;
        _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Right = 2;
        _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Fill = 3;

        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UIControlContentHorizontalAlignment = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment);
        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.clazz = __CLASS_org_xmlvm_iphone_UIControlContentHorizontalAlignment;
        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_UIControlContentHorizontalAlignment_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlContentHorizontalAlignment);
        __CLASS_org_xmlvm_iphone_UIControlContentHorizontalAlignment_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlContentHorizontalAlignment_1ARRAY);
        __CLASS_org_xmlvm_iphone_UIControlContentHorizontalAlignment_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlContentHorizontalAlignment_2ARRAY);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIControlContentHorizontalAlignment]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UIControlContentHorizontalAlignment(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIControlContentHorizontalAlignment]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControlContentHorizontalAlignment(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIControlContentHorizontalAlignment()
{
    if (!__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.classInitialized) __INIT_org_xmlvm_iphone_UIControlContentHorizontalAlignment();
    org_xmlvm_iphone_UIControlContentHorizontalAlignment* me = (org_xmlvm_iphone_UIControlContentHorizontalAlignment*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIControlContentHorizontalAlignment));
    me->tib = &__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControlContentHorizontalAlignment(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIControlContentHorizontalAlignment]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIControlContentHorizontalAlignment()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIControlContentHorizontalAlignment_GET_Center()
{
    if (!__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.classInitialized) __INIT_org_xmlvm_iphone_UIControlContentHorizontalAlignment();
    return _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Center;
}

void org_xmlvm_iphone_UIControlContentHorizontalAlignment_PUT_Center(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.classInitialized) __INIT_org_xmlvm_iphone_UIControlContentHorizontalAlignment();
    _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Center = v;
}

JAVA_INT org_xmlvm_iphone_UIControlContentHorizontalAlignment_GET_Left()
{
    if (!__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.classInitialized) __INIT_org_xmlvm_iphone_UIControlContentHorizontalAlignment();
    return _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Left;
}

void org_xmlvm_iphone_UIControlContentHorizontalAlignment_PUT_Left(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.classInitialized) __INIT_org_xmlvm_iphone_UIControlContentHorizontalAlignment();
    _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Left = v;
}

JAVA_INT org_xmlvm_iphone_UIControlContentHorizontalAlignment_GET_Right()
{
    if (!__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.classInitialized) __INIT_org_xmlvm_iphone_UIControlContentHorizontalAlignment();
    return _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Right;
}

void org_xmlvm_iphone_UIControlContentHorizontalAlignment_PUT_Right(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.classInitialized) __INIT_org_xmlvm_iphone_UIControlContentHorizontalAlignment();
    _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Right = v;
}

JAVA_INT org_xmlvm_iphone_UIControlContentHorizontalAlignment_GET_Fill()
{
    if (!__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.classInitialized) __INIT_org_xmlvm_iphone_UIControlContentHorizontalAlignment();
    return _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Fill;
}

void org_xmlvm_iphone_UIControlContentHorizontalAlignment_PUT_Fill(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIControlContentHorizontalAlignment.classInitialized) __INIT_org_xmlvm_iphone_UIControlContentHorizontalAlignment();
    _STATIC_org_xmlvm_iphone_UIControlContentHorizontalAlignment_Fill = v;
}

