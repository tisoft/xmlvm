#include "xmlvm.h"

#include "org_xmlvm_iphone_UIActivityIndicatorViewStyle.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIActivityIndicatorViewStyle __TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UIActivityIndicatorViewStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_WhiteLarge;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_White;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_Gray;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"WhiteLarge",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_WhiteLarge,
    "",
    JAVA_NULL},
    {"White",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_White,
    "",
    JAVA_NULL},
    {"Gray",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_Gray,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIActivityIndicatorViewStyle___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle()
{
    __TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIActivityIndicatorViewStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_WhiteLarge = 0;
    _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_White = 1;
    _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_Gray = 2;

    __TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle);
    __TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.clazz = __CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle;
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIActivityIndicatorViewStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIActivityIndicatorViewStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIActivityIndicatorViewStyle()
{
    if (!__TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    org_xmlvm_iphone_UIActivityIndicatorViewStyle* me = (org_xmlvm_iphone_UIActivityIndicatorViewStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIActivityIndicatorViewStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIActivityIndicatorViewStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIActivityIndicatorViewStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    org_xmlvm_iphone_UIActivityIndicatorViewStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIActivityIndicatorViewStyle_GET_WhiteLarge()
{
    if (!__TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    return _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_WhiteLarge;
}

void org_xmlvm_iphone_UIActivityIndicatorViewStyle_PUT_WhiteLarge(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_WhiteLarge = v;
}

JAVA_INT org_xmlvm_iphone_UIActivityIndicatorViewStyle_GET_White()
{
    if (!__TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    return _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_White;
}

void org_xmlvm_iphone_UIActivityIndicatorViewStyle_PUT_White(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_White = v;
}

JAVA_INT org_xmlvm_iphone_UIActivityIndicatorViewStyle_GET_Gray()
{
    if (!__TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    return _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_Gray;
}

void org_xmlvm_iphone_UIActivityIndicatorViewStyle_PUT_Gray(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_Gray = v;
}

void org_xmlvm_iphone_UIActivityIndicatorViewStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorViewStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

