
#include "org_xmlvm_iphone_NSNumberFormatterStyle.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSNumberFormatterStyle __TIB_org_xmlvm_iphone_NSNumberFormatterStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.NSNumberFormatterStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_NoStyle;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_DecimalStyle;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_CurrencyStyle;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_PercentStyle;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_ScientificStyle;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSNumberFormatterStyle_SpellOutStyle;

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

