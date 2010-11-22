
#include "org_xmlvm_iphone_UITableViewCellStyle.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITableViewCellStyle __CLASS_org_xmlvm_iphone_UITableViewCellStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UITableViewCellStyle", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value1;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value2;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Subtitle;

void __INIT_org_xmlvm_iphone_UITableViewCellStyle()
{
    __CLASS_org_xmlvm_iphone_UITableViewCellStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UITableViewCellStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITableViewCellStyle.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITableViewCellStyle.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITableViewCellStyle.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Default = 0;
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value1 = 1;
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value2 = 2;
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Subtitle = 3;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewCellStyle]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UITableViewCellStyle(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewCellStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewCellStyle()
{
    if (!__CLASS_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    org_xmlvm_iphone_UITableViewCellStyle* me = (org_xmlvm_iphone_UITableViewCellStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewCellStyle));
    me->__class = &__CLASS_org_xmlvm_iphone_UITableViewCellStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewCellStyle]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UITableViewCellStyle);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITableViewCellStyle();
    org_xmlvm_iphone_UITableViewCellStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellStyle_GET_Default()
{
    if (!__CLASS_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Default;
}

void org_xmlvm_iphone_UITableViewCellStyle_PUT_Default(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Default = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellStyle_GET_Value1()
{
    if (!__CLASS_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value1;
}

void org_xmlvm_iphone_UITableViewCellStyle_PUT_Value1(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value1 = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellStyle_GET_Value2()
{
    if (!__CLASS_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value2;
}

void org_xmlvm_iphone_UITableViewCellStyle_PUT_Value2(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value2 = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellStyle_GET_Subtitle()
{
    if (!__CLASS_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Subtitle;
}

void org_xmlvm_iphone_UITableViewCellStyle_PUT_Subtitle(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Subtitle = v;
}

void org_xmlvm_iphone_UITableViewCellStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCellStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

