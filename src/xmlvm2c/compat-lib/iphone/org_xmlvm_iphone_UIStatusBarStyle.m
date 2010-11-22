
#include "org_xmlvm_iphone_UIStatusBarStyle.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIStatusBarStyle __CLASS_org_xmlvm_iphone_UIStatusBarStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UIStatusBarStyle", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIStatusBarStyle_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackTranslucent;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackOpaque;

void __INIT_org_xmlvm_iphone_UIStatusBarStyle()
{
    __CLASS_org_xmlvm_iphone_UIStatusBarStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIStatusBarStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIStatusBarStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIStatusBarStyle.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIStatusBarStyle.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIStatusBarStyle.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIStatusBarStyle_Default = 0;
    _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackTranslucent = 1;
    _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackOpaque = 2;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIStatusBarStyle]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UIStatusBarStyle(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIStatusBarStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIStatusBarStyle()
{
    if (!__CLASS_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    org_xmlvm_iphone_UIStatusBarStyle* me = (org_xmlvm_iphone_UIStatusBarStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIStatusBarStyle));
    me->__class = &__CLASS_org_xmlvm_iphone_UIStatusBarStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIStatusBarStyle]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIStatusBarStyle);
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
    if (!__CLASS_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    return _STATIC_org_xmlvm_iphone_UIStatusBarStyle_Default;
}

void org_xmlvm_iphone_UIStatusBarStyle_PUT_Default(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    _STATIC_org_xmlvm_iphone_UIStatusBarStyle_Default = v;
}

JAVA_INT org_xmlvm_iphone_UIStatusBarStyle_GET_BlackTranslucent()
{
    if (!__CLASS_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    return _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackTranslucent;
}

void org_xmlvm_iphone_UIStatusBarStyle_PUT_BlackTranslucent(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackTranslucent = v;
}

JAVA_INT org_xmlvm_iphone_UIStatusBarStyle_GET_BlackOpaque()
{
    if (!__CLASS_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    return _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackOpaque;
}

void org_xmlvm_iphone_UIStatusBarStyle_PUT_BlackOpaque(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIStatusBarStyle.classInitialized) __INIT_org_xmlvm_iphone_UIStatusBarStyle();
    _STATIC_org_xmlvm_iphone_UIStatusBarStyle_BlackOpaque = v;
}

void org_xmlvm_iphone_UIStatusBarStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIStatusBarStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

