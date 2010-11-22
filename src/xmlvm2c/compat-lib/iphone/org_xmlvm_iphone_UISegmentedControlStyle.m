
#include "org_xmlvm_iphone_UISegmentedControlStyle.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UISegmentedControlStyle __CLASS_org_xmlvm_iphone_UISegmentedControlStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UISegmentedControlStyle", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Plain;
static JAVA_INT _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bordered;
static JAVA_INT _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bar;

void __INIT_org_xmlvm_iphone_UISegmentedControlStyle()
{
    __CLASS_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UISegmentedControlStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISegmentedControlStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UISegmentedControlStyle.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UISegmentedControlStyle.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UISegmentedControlStyle.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Plain = 0;
    _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bordered = 1;
    _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bar = 2;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISegmentedControlStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UISegmentedControlStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISegmentedControlStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISegmentedControlStyle()
{
    if (!__CLASS_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    org_xmlvm_iphone_UISegmentedControlStyle* me = (org_xmlvm_iphone_UISegmentedControlStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISegmentedControlStyle));
    me->__class = &__CLASS_org_xmlvm_iphone_UISegmentedControlStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISegmentedControlStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISegmentedControlStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UISegmentedControlStyle();
    org_xmlvm_iphone_UISegmentedControlStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UISegmentedControlStyle_GET_Plain()
{
    if (!__CLASS_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    return _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Plain;
}

void org_xmlvm_iphone_UISegmentedControlStyle_PUT_Plain(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Plain = v;
}

JAVA_INT org_xmlvm_iphone_UISegmentedControlStyle_GET_Bordered()
{
    if (!__CLASS_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    return _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bordered;
}

void org_xmlvm_iphone_UISegmentedControlStyle_PUT_Bordered(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bordered = v;
}

JAVA_INT org_xmlvm_iphone_UISegmentedControlStyle_GET_Bar()
{
    if (!__CLASS_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    return _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bar;
}

void org_xmlvm_iphone_UISegmentedControlStyle_PUT_Bar(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bar = v;
}

void org_xmlvm_iphone_UISegmentedControlStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControlStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

