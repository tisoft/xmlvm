
#include "org_xmlvm_iphone_UIBarStyle.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIBarStyle __CLASS_org_xmlvm_iphone_UIBarStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UIBarStyle", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarStyle_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarStyle_Black;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarStyle_BlackOpaque;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarStyle_BlackTranslucent;

void __INIT_org_xmlvm_iphone_UIBarStyle()
{
    __CLASS_org_xmlvm_iphone_UIBarStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIBarStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIBarStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIBarStyle.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIBarStyle.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIBarStyle.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIBarStyle_Default = 0;
    _STATIC_org_xmlvm_iphone_UIBarStyle_Black = 1;
    _STATIC_org_xmlvm_iphone_UIBarStyle_BlackOpaque = 1;
    _STATIC_org_xmlvm_iphone_UIBarStyle_BlackTranslucent = 2;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIBarStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIBarStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIBarStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIBarStyle()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarStyle();
    org_xmlvm_iphone_UIBarStyle* me = (org_xmlvm_iphone_UIBarStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIBarStyle));
    me->__class = &__CLASS_org_xmlvm_iphone_UIBarStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIBarStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIBarStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIBarStyle();
    org_xmlvm_iphone_UIBarStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIBarStyle_GET_Default()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarStyle();
    return _STATIC_org_xmlvm_iphone_UIBarStyle_Default;
}

void org_xmlvm_iphone_UIBarStyle_PUT_Default(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarStyle();
    _STATIC_org_xmlvm_iphone_UIBarStyle_Default = v;
}

JAVA_INT org_xmlvm_iphone_UIBarStyle_GET_Black()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarStyle();
    return _STATIC_org_xmlvm_iphone_UIBarStyle_Black;
}

void org_xmlvm_iphone_UIBarStyle_PUT_Black(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarStyle();
    _STATIC_org_xmlvm_iphone_UIBarStyle_Black = v;
}

JAVA_INT org_xmlvm_iphone_UIBarStyle_GET_BlackOpaque()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarStyle();
    return _STATIC_org_xmlvm_iphone_UIBarStyle_BlackOpaque;
}

void org_xmlvm_iphone_UIBarStyle_PUT_BlackOpaque(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarStyle();
    _STATIC_org_xmlvm_iphone_UIBarStyle_BlackOpaque = v;
}

JAVA_INT org_xmlvm_iphone_UIBarStyle_GET_BlackTranslucent()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarStyle();
    return _STATIC_org_xmlvm_iphone_UIBarStyle_BlackTranslucent;
}

void org_xmlvm_iphone_UIBarStyle_PUT_BlackTranslucent(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarStyle();
    _STATIC_org_xmlvm_iphone_UIBarStyle_BlackTranslucent = v;
}

void org_xmlvm_iphone_UIBarStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

