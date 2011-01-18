#include "xmlvm.h"

#include "org_xmlvm_iphone_NSNumberFormatterStyle.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSNumberFormatterStyle __TIB_org_xmlvm_iphone_NSNumberFormatterStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.NSNumberFormatterStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNumberFormatterStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNumberFormatterStyle_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_NoStyle;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_DecimalStyle;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_CurrencyStyle;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_PercentStyle;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_ScientificStyle;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_SpellOutStyle;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"NoStyle",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_NoStyle,
    "",
    JAVA_NULL},
    {"DecimalStyle",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_DecimalStyle,
    "",
    JAVA_NULL},
    {"CurrencyStyle",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_CurrencyStyle,
    "",
    JAVA_NULL},
    {"PercentStyle",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_PercentStyle,
    "",
    JAVA_NULL},
    {"ScientificStyle",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_ScientificStyle,
    "",
    JAVA_NULL},
    {"SpellOutStyle",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_SpellOutStyle,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSNumberFormatterStyle();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSNumberFormatterStyle___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_NSNumberFormatterStyle()
{
    __TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSNumberFormatterStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSNumberFormatterStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSNumberFormatterStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSNumberFormatterStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_NoStyle = 0;
    _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_DecimalStyle = 1;
    _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_CurrencyStyle = 2;
    _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_PercentStyle = 3;
    _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_ScientificStyle = 4;
    _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_SpellOutStyle = 5;

    __TIB_org_xmlvm_iphone_NSNumberFormatterStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNumberFormatterStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSNumberFormatterStyle.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSNumberFormatterStyle.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNumberFormatterStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSNumberFormatterStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSNumberFormatterStyle);
    __TIB_org_xmlvm_iphone_NSNumberFormatterStyle.clazz = __CLASS_org_xmlvm_iphone_NSNumberFormatterStyle;
    __CLASS_org_xmlvm_iphone_NSNumberFormatterStyle_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNumberFormatterStyle, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSNumberFormatterStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSNumberFormatterStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSNumberFormatterStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNumberFormatterStyle()
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatterStyle();
    org_xmlvm_iphone_NSNumberFormatterStyle* me = (org_xmlvm_iphone_NSNumberFormatterStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSNumberFormatterStyle));
    me->tib = &__TIB_org_xmlvm_iphone_NSNumberFormatterStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSNumberFormatterStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNumberFormatterStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSNumberFormatterStyle();
    org_xmlvm_iphone_NSNumberFormatterStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_NSNumberFormatterStyle_GET_NoStyle()
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatterStyle();
    return _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_NoStyle;
}

void org_xmlvm_iphone_NSNumberFormatterStyle_PUT_NoStyle(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatterStyle();
    _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_NoStyle = v;
}

JAVA_INT org_xmlvm_iphone_NSNumberFormatterStyle_GET_DecimalStyle()
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatterStyle();
    return _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_DecimalStyle;
}

void org_xmlvm_iphone_NSNumberFormatterStyle_PUT_DecimalStyle(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatterStyle();
    _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_DecimalStyle = v;
}

JAVA_INT org_xmlvm_iphone_NSNumberFormatterStyle_GET_CurrencyStyle()
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatterStyle();
    return _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_CurrencyStyle;
}

void org_xmlvm_iphone_NSNumberFormatterStyle_PUT_CurrencyStyle(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatterStyle();
    _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_CurrencyStyle = v;
}

JAVA_INT org_xmlvm_iphone_NSNumberFormatterStyle_GET_PercentStyle()
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatterStyle();
    return _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_PercentStyle;
}

void org_xmlvm_iphone_NSNumberFormatterStyle_PUT_PercentStyle(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatterStyle();
    _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_PercentStyle = v;
}

JAVA_INT org_xmlvm_iphone_NSNumberFormatterStyle_GET_ScientificStyle()
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatterStyle();
    return _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_ScientificStyle;
}

void org_xmlvm_iphone_NSNumberFormatterStyle_PUT_ScientificStyle(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatterStyle();
    _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_ScientificStyle = v;
}

JAVA_INT org_xmlvm_iphone_NSNumberFormatterStyle_GET_SpellOutStyle()
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatterStyle();
    return _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_SpellOutStyle;
}

void org_xmlvm_iphone_NSNumberFormatterStyle_PUT_SpellOutStyle(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatterStyle.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatterStyle();
    _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_SpellOutStyle = v;
}

void org_xmlvm_iphone_NSNumberFormatterStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNumberFormatterStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

