
#include "org_xmlvm_iphone_UIStatusBarStyle.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIStatusBarStyle __TIB_org_xmlvm_iphone_UIStatusBarStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UIStatusBarStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIStatusBarStyle;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIStatusBarStyle_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIStatusBarStyle_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackTranslucent;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackOpaque;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Default",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIStatusBarStyle_Default,
    "",
    JAVA_NULL},
    {"BlackTranslucent",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackTranslucent,
    "",
    JAVA_NULL},
    {"BlackOpaque",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackOpaque,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_UIStatusBarStyle()
{
    __TIB_org_xmlvm_iphone_UIStatusBarStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIStatusBarStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIStatusBarStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIStatusBarStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIStatusBarStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIStatusBarStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIStatusBarStyle_Default = 0;
    _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackTranslucent = 1;
    _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackOpaque = 2;

    __TIB_org_xmlvm_iphone_UIStatusBarStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIStatusBarStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIStatusBarStyle = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UIStatusBarStyle);
    __TIB_org_xmlvm_iphone_UIStatusBarStyle.clazz = __CLASS_org_xmlvm_iphone_UIStatusBarStyle;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIStatusBarStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIStatusBarStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIStatusBarStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIStatusBarStyle()
{
    if (!__TIB_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    org_xmlvm_iphone_UIStatusBarStyle* me = (org_xmlvm_iphone_UIStatusBarStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIStatusBarStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UIStatusBarStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIStatusBarStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIStatusBarStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIStatusBarStyle();
    org_xmlvm_iphone_UIStatusBarStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIStatusBarStyle_GET_Default()
{
    if (!__TIB_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    return _STATIC_org_xmlvm_iphone_UIStatusBarStyle_Default;
}

void org_xmlvm_iphone_UIStatusBarStyle_PUT_Default(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    _STATIC_org_xmlvm_iphone_UIStatusBarStyle_Default = v;
}

JAVA_INT org_xmlvm_iphone_UIStatusBarStyle_GET_BlackTranslucent()
{
    if (!__TIB_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    return _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackTranslucent;
}

void org_xmlvm_iphone_UIStatusBarStyle_PUT_BlackTranslucent(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackTranslucent = v;
}

JAVA_INT org_xmlvm_iphone_UIStatusBarStyle_GET_BlackOpaque()
{
    if (!__TIB_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    return _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackOpaque;
}

void org_xmlvm_iphone_UIStatusBarStyle_PUT_BlackOpaque(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackOpaque = v;
}

void org_xmlvm_iphone_UIStatusBarStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIStatusBarStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

