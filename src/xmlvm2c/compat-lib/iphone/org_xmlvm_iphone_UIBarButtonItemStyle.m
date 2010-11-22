
#include "org_xmlvm_iphone_UIBarButtonItemStyle.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIBarButtonItemStyle __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UIBarButtonItemStyle", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done;

void __INIT_org_xmlvm_iphone_UIBarButtonItemStyle()
{
    __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIBarButtonItemStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIBarButtonItemStyle.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain = 0;
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered = 1;
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done = 2;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIBarButtonItemStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIBarButtonItemStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIBarButtonItemStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIBarButtonItemStyle()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    org_xmlvm_iphone_UIBarButtonItemStyle* me = (org_xmlvm_iphone_UIBarButtonItemStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIBarButtonItemStyle));
    me->__class = &__CLASS_org_xmlvm_iphone_UIBarButtonItemStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIBarButtonItemStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIBarButtonItemStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIBarButtonItemStyle();
    org_xmlvm_iphone_UIBarButtonItemStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonItemStyle_GET_Plain()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    return _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain;
}

void org_xmlvm_iphone_UIBarButtonItemStyle_PUT_Plain(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonItemStyle_GET_Bordered()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    return _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered;
}

void org_xmlvm_iphone_UIBarButtonItemStyle_PUT_Bordered(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonItemStyle_GET_Done()
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    return _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done;
}

void org_xmlvm_iphone_UIBarButtonItemStyle_PUT_Done(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done = v;
}

void org_xmlvm_iphone_UIBarButtonItemStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItemStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

