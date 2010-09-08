#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UIColor.h"

#include "org_xmlvm_iphone_UIGenericToolbar.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIGenericToolbar __CLASS_org_xmlvm_iphone_UIGenericToolbar = {
    0, // classInitialized
    "org.xmlvm.iphone.UIGenericToolbar", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIGenericBar, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIGenericToolbar()
{
    __CLASS_org_xmlvm_iphone_UIGenericToolbar.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIGenericBar.classInitialized) __INIT_org_xmlvm_iphone_UIGenericBar();
    __CLASS_org_xmlvm_iphone_UIGenericToolbar.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIGenericToolbar;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIGenericToolbar.vtable, __CLASS_org_xmlvm_iphone_UIGenericBar.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIGenericBar.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIGenericToolbar.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIGenericToolbar_getBarStyle__;
    __CLASS_org_xmlvm_iphone_UIGenericToolbar.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIGenericToolbar_setBarStyle___int;
    __CLASS_org_xmlvm_iphone_UIGenericToolbar.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIGenericToolbar_getTintColor__;
    __CLASS_org_xmlvm_iphone_UIGenericToolbar.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIGenericToolbar_setTintColor___org_xmlvm_iphone_UIColor;
    __CLASS_org_xmlvm_iphone_UIGenericToolbar.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIGenericToolbar_isTranslucent__;
    __CLASS_org_xmlvm_iphone_UIGenericToolbar.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIGenericToolbar_setTranslucent___boolean;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIGenericToolbar.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIGenericToolbar.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIGenericToolbar]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIGenericToolbar()
{
    if (!__CLASS_org_xmlvm_iphone_UIGenericToolbar.classInitialized) __INIT_org_xmlvm_iphone_UIGenericToolbar();
    org_xmlvm_iphone_UIGenericToolbar* me = (org_xmlvm_iphone_UIGenericToolbar*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIGenericToolbar));
    me->__class = &__CLASS_org_xmlvm_iphone_UIGenericToolbar;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIGenericToolbar]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIGenericToolbar()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIGenericToolbar();
    org_xmlvm_iphone_UIGenericToolbar___INIT___(me);
    return me;
}

void __DELETE_org_xmlvm_iphone_UIGenericToolbar(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIGenericToolbar]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGenericToolbar___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGenericToolbar___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGenericToolbar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGenericToolbar___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIGenericToolbar_getBarStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGenericToolbar_getBarStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGenericToolbar_setBarStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGenericToolbar_setBarStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIGenericToolbar_getTintColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGenericToolbar_getTintColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGenericToolbar_setTintColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGenericToolbar_setTintColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIGenericToolbar_isTranslucent__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGenericToolbar_isTranslucent__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGenericToolbar_setTranslucent___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGenericToolbar_setTranslucent___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

