#include "org_xmlvm_iphone_UINavigationItem.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UINavigationController.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UINavigationBarDelegate.h"

#include "org_xmlvm_iphone_UINavigationBar.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UINavigationBar __CLASS_org_xmlvm_iphone_UINavigationBar = {
    0, // classInitialized
    "org.xmlvm.iphone.UINavigationBar", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIGenericToolbar, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UINavigationBar()
{
    __CLASS_org_xmlvm_iphone_UINavigationBar.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIGenericToolbar.classInitialized) __INIT_org_xmlvm_iphone_UIGenericToolbar();
    __CLASS_org_xmlvm_iphone_UINavigationBar.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UINavigationBar;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UINavigationBar.vtable, __CLASS_org_xmlvm_iphone_UIGenericToolbar.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIGenericToolbar.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UINavigationBar.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_pushNavigationItem___org_xmlvm_iphone_UINavigationItem_boolean;
    __CLASS_org_xmlvm_iphone_UINavigationBar.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_popNavigationItemAnimated___boolean;
    __CLASS_org_xmlvm_iphone_UINavigationBar.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_setItems___java_util_ArrayList;
    __CLASS_org_xmlvm_iphone_UINavigationBar.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_setItems___java_util_ArrayList_boolean;
    __CLASS_org_xmlvm_iphone_UINavigationBar.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_getDelegate__;
    __CLASS_org_xmlvm_iphone_UINavigationBar.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_setDelegate___org_xmlvm_iphone_UINavigationBarDelegate;
    __CLASS_org_xmlvm_iphone_UINavigationBar.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_getTopItem__;
    __CLASS_org_xmlvm_iphone_UINavigationBar.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_getBackitem__;
    __CLASS_org_xmlvm_iphone_UINavigationBar.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_getItems__;
    __CLASS_org_xmlvm_iphone_UINavigationBar.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_updateViews__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UINavigationBar.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UINavigationBar.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UINavigationBar]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UINavigationBar(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UINavigationBar]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UINavigationBar()
{
    if (!__CLASS_org_xmlvm_iphone_UINavigationBar.classInitialized) __INIT_org_xmlvm_iphone_UINavigationBar();
    org_xmlvm_iphone_UINavigationBar* me = (org_xmlvm_iphone_UINavigationBar*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UINavigationBar));
    me->__class = &__CLASS_org_xmlvm_iphone_UINavigationBar;
    me->org_xmlvm_iphone_UINavigationBar.controller_ = (org_xmlvm_iphone_UINavigationController*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UINavigationBar]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UINavigationBar);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UINavigationBar()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UINavigationBar();
    org_xmlvm_iphone_UINavigationBar___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UINavigationBar___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar_pushNavigationItem___org_xmlvm_iphone_UINavigationItem_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_pushNavigationItem___org_xmlvm_iphone_UINavigationItem_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationBar_popNavigationItemAnimated___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_popNavigationItemAnimated___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar_setItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_setItems___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar_setItems___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_setItems___java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationBar_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar_setDelegate___org_xmlvm_iphone_UINavigationBarDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_setDelegate___org_xmlvm_iphone_UINavigationBarDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationBar_getTopItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_getTopItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationBar_getBackitem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_getBackitem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationBar_getItems__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_getItems__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar_updateViews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_updateViews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

