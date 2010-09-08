
#include "org_xmlvm_iphone_UIActivityIndicatorViewStyle.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIActivityIndicatorViewStyle __CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UIActivityIndicatorViewStyle", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_WhiteLarge;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_White;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_Gray;

void __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle()
{
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIActivityIndicatorViewStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_WhiteLarge = 0;
    _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_White = 1;
    _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_Gray = 2;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIActivityIndicatorViewStyle()
{
    if (!__CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    org_xmlvm_iphone_UIActivityIndicatorViewStyle* me = (org_xmlvm_iphone_UIActivityIndicatorViewStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIActivityIndicatorViewStyle));
    me->__class = &__CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle;
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

void __DELETE_org_xmlvm_iphone_UIActivityIndicatorViewStyle(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIActivityIndicatorViewStyle]
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIActivityIndicatorViewStyle_GET_WhiteLarge()
{
    if (!__CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    return _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_WhiteLarge;
}

void org_xmlvm_iphone_UIActivityIndicatorViewStyle_PUT_WhiteLarge(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_WhiteLarge = v;
}

JAVA_INT org_xmlvm_iphone_UIActivityIndicatorViewStyle_GET_White()
{
    if (!__CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    return _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_White;
}

void org_xmlvm_iphone_UIActivityIndicatorViewStyle_PUT_White(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_White = v;
}

JAVA_INT org_xmlvm_iphone_UIActivityIndicatorViewStyle_GET_Gray()
{
    if (!__CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    return _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_Gray;
}

void org_xmlvm_iphone_UIActivityIndicatorViewStyle_PUT_Gray(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIActivityIndicatorViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorViewStyle();
    _STATIC_org_xmlvm_iphone_UIActivityIndicatorViewStyle_Gray = v;
}

void org_xmlvm_iphone_UIActivityIndicatorViewStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorViewStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

