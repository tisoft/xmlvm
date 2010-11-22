
#include "org_xmlvm_iphone_UITextBorderStyle.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITextBorderStyle __CLASS_org_xmlvm_iphone_UITextBorderStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UITextBorderStyle", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITextBorderStyle_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITextBorderStyle_Line;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITextBorderStyle_Bezel;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITextBorderStyle_RoundedRect;

void __INIT_org_xmlvm_iphone_UITextBorderStyle()
{
    __CLASS_org_xmlvm_iphone_UITextBorderStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UITextBorderStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITextBorderStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITextBorderStyle.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITextBorderStyle.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITextBorderStyle.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_None = 0;
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_Line = 1;
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_Bezel = 2;
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_RoundedRect = 3;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITextBorderStyle]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UITextBorderStyle(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITextBorderStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextBorderStyle()
{
    if (!__CLASS_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    org_xmlvm_iphone_UITextBorderStyle* me = (org_xmlvm_iphone_UITextBorderStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITextBorderStyle));
    me->__class = &__CLASS_org_xmlvm_iphone_UITextBorderStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITextBorderStyle]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UITextBorderStyle);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextBorderStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITextBorderStyle();
    org_xmlvm_iphone_UITextBorderStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UITextBorderStyle_GET_None()
{
    if (!__CLASS_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    return _STATIC_org_xmlvm_iphone_UITextBorderStyle_None;
}

void org_xmlvm_iphone_UITextBorderStyle_PUT_None(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_None = v;
}

JAVA_INT org_xmlvm_iphone_UITextBorderStyle_GET_Line()
{
    if (!__CLASS_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    return _STATIC_org_xmlvm_iphone_UITextBorderStyle_Line;
}

void org_xmlvm_iphone_UITextBorderStyle_PUT_Line(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_Line = v;
}

JAVA_INT org_xmlvm_iphone_UITextBorderStyle_GET_Bezel()
{
    if (!__CLASS_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    return _STATIC_org_xmlvm_iphone_UITextBorderStyle_Bezel;
}

void org_xmlvm_iphone_UITextBorderStyle_PUT_Bezel(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_Bezel = v;
}

JAVA_INT org_xmlvm_iphone_UITextBorderStyle_GET_RoundedRect()
{
    if (!__CLASS_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    return _STATIC_org_xmlvm_iphone_UITextBorderStyle_RoundedRect;
}

void org_xmlvm_iphone_UITextBorderStyle_PUT_RoundedRect(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITextBorderStyle.classInitialized) __INIT_org_xmlvm_iphone_UITextBorderStyle();
    _STATIC_org_xmlvm_iphone_UITextBorderStyle_RoundedRect = v;
}

void org_xmlvm_iphone_UITextBorderStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITextBorderStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

