#include "xmlvm.h"

#include "org_xmlvm_iphone_UIViewAnimationTransition.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIViewAnimationTransition __TIB_org_xmlvm_iphone_UIViewAnimationTransition = {
    0, // classInitialized
    "org.xmlvm.iphone.UIViewAnimationTransition", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationTransition;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationTransition_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"None",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None,
    "",
    JAVA_NULL},
    {"FlipFromLeft",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft,
    "",
    JAVA_NULL},
    {"FlipFromRight",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight,
    "",
    JAVA_NULL},
    {"CurlUp",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp,
    "",
    JAVA_NULL},
    {"CurlDown",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIViewAnimationTransition();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIViewAnimationTransition___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UIViewAnimationTransition()
{
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationTransition;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIViewAnimationTransition.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None = 0;
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft = 1;
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight = 2;
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp = 3;
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown = 4;

    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIViewAnimationTransition = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIViewAnimationTransition);
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.clazz = __CLASS_org_xmlvm_iphone_UIViewAnimationTransition;
    __CLASS_org_xmlvm_iphone_UIViewAnimationTransition_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewAnimationTransition, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewAnimationTransition]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIViewAnimationTransition(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewAnimationTransition]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewAnimationTransition()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    org_xmlvm_iphone_UIViewAnimationTransition* me = (org_xmlvm_iphone_UIViewAnimationTransition*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewAnimationTransition));
    me->tib = &__TIB_org_xmlvm_iphone_UIViewAnimationTransition;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIViewAnimationTransition]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationTransition()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIViewAnimationTransition();
    org_xmlvm_iphone_UIViewAnimationTransition___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_None()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_None(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_FlipFromLeft()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_FlipFromLeft(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_FlipFromRight()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_FlipFromRight(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_CurlUp()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_CurlUp(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_CurlDown()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_CurlDown(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown = v;
}

void org_xmlvm_iphone_UIViewAnimationTransition___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewAnimationTransition___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

