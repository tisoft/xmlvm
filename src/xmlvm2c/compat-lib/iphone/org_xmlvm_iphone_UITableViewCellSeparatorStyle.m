
#include "org_xmlvm_iphone_UITableViewCellSeparatorStyle.h"

__TIB_DEFINITION_org_xmlvm_iphone_UITableViewCellSeparatorStyle __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UITableViewCellSeparatorStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_SingleLine;

void __INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle()
{
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellSeparatorStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_None = 0;
    _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_SingleLine = 1;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITableViewCellSeparatorStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewCellSeparatorStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewCellSeparatorStyle()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle();
    org_xmlvm_iphone_UITableViewCellSeparatorStyle* me = (org_xmlvm_iphone_UITableViewCellSeparatorStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewCellSeparatorStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewCellSeparatorStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellSeparatorStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITableViewCellSeparatorStyle();
    org_xmlvm_iphone_UITableViewCellSeparatorStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellSeparatorStyle_GET_None()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_None;
}

void org_xmlvm_iphone_UITableViewCellSeparatorStyle_PUT_None(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_None = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellSeparatorStyle_GET_SingleLine()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_SingleLine;
}

void org_xmlvm_iphone_UITableViewCellSeparatorStyle_PUT_SingleLine(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_SingleLine = v;
}

void org_xmlvm_iphone_UITableViewCellSeparatorStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITableViewCellSeparatorStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

