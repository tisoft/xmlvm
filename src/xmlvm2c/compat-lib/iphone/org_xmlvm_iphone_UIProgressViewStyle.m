
#include "org_xmlvm_iphone_UIProgressViewStyle.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIProgressViewStyle __CLASS_org_xmlvm_iphone_UIProgressViewStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UIProgressViewStyle", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Bar;

void __INIT_org_xmlvm_iphone_UIProgressViewStyle()
{
    __CLASS_org_xmlvm_iphone_UIProgressViewStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIProgressViewStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIProgressViewStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIProgressViewStyle.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIProgressViewStyle.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIProgressViewStyle.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Default = 0;
    _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Bar = 1;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIProgressViewStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIProgressViewStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIProgressViewStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIProgressViewStyle()
{
    if (!__CLASS_org_xmlvm_iphone_UIProgressViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIProgressViewStyle();
    org_xmlvm_iphone_UIProgressViewStyle* me = (org_xmlvm_iphone_UIProgressViewStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIProgressViewStyle));
    me->__class = &__CLASS_org_xmlvm_iphone_UIProgressViewStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIProgressViewStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIProgressViewStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIProgressViewStyle();
    org_xmlvm_iphone_UIProgressViewStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIProgressViewStyle_GET_Default()
{
    if (!__CLASS_org_xmlvm_iphone_UIProgressViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIProgressViewStyle();
    return _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Default;
}

void org_xmlvm_iphone_UIProgressViewStyle_PUT_Default(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIProgressViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIProgressViewStyle();
    _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Default = v;
}

JAVA_INT org_xmlvm_iphone_UIProgressViewStyle_GET_Bar()
{
    if (!__CLASS_org_xmlvm_iphone_UIProgressViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIProgressViewStyle();
    return _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Bar;
}

void org_xmlvm_iphone_UIProgressViewStyle_PUT_Bar(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIProgressViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIProgressViewStyle();
    _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Bar = v;
}

void org_xmlvm_iphone_UIProgressViewStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIProgressViewStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

