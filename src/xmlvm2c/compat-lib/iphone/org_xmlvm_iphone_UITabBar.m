#include "org_xmlvm_iphone_UITabBarDelegate.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UITabBarController.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UITabBarItem.h"

#include "org_xmlvm_iphone_UITabBar.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITabBar __CLASS_org_xmlvm_iphone_UITabBar = {
    0, // classInitialized
    "org.xmlvm.iphone.UITabBar", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIGenericBar, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UITabBar()
{
    __CLASS_org_xmlvm_iphone_UITabBar.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIGenericBar.classInitialized) __INIT_org_xmlvm_iphone_UIGenericBar();
    __CLASS_org_xmlvm_iphone_UITabBar.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITabBar;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITabBar.vtable, __CLASS_org_xmlvm_iphone_UIGenericBar.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIGenericBar.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UITabBar.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_getDelegate__;
    __CLASS_org_xmlvm_iphone_UITabBar.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setDelegate___org_xmlvm_iphone_UITabBarDelegate;
    __CLASS_org_xmlvm_iphone_UITabBar.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_getItems__;
    __CLASS_org_xmlvm_iphone_UITabBar.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList;
    __CLASS_org_xmlvm_iphone_UITabBar.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList_boolean;
    __CLASS_org_xmlvm_iphone_UITabBar.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_getSelectedItem__;
    __CLASS_org_xmlvm_iphone_UITabBar.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setSelectedItem___org_xmlvm_iphone_UITabBarItem;
    __CLASS_org_xmlvm_iphone_UITabBar.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setSelectedIndex___int;
    __CLASS_org_xmlvm_iphone_UITabBar.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_beginCustomizingItems___java_util_ArrayList;
    __CLASS_org_xmlvm_iphone_UITabBar.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_endCustomizingAnimated___boolean;
    __CLASS_org_xmlvm_iphone_UITabBar.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_isCustomizing__;
    __CLASS_org_xmlvm_iphone_UITabBar.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_updateViews__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITabBar.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITabBar.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITabBar]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UITabBar(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITabBar]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBar()
{
    if (!__CLASS_org_xmlvm_iphone_UITabBar.classInitialized) __INIT_org_xmlvm_iphone_UITabBar();
    org_xmlvm_iphone_UITabBar* me = (org_xmlvm_iphone_UITabBar*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITabBar));
    me->__class = &__CLASS_org_xmlvm_iphone_UITabBar;
    me->org_xmlvm_iphone_UITabBar.tbcontrol_ = (org_xmlvm_iphone_UITabBarController*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITabBar]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UITabBar);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBar()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITabBar();
    org_xmlvm_iphone_UITabBar___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITabBar___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBar_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setDelegate___org_xmlvm_iphone_UITabBarDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setDelegate___org_xmlvm_iphone_UITabBarDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBar_getItems__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_getItems__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBar_getSelectedItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_getSelectedItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setSelectedItem___org_xmlvm_iphone_UITabBarItem(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setSelectedItem___org_xmlvm_iphone_UITabBarItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setSelectedIndex___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setSelectedIndex___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_beginCustomizingItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_beginCustomizingItems___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITabBar_endCustomizingAnimated___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_endCustomizingAnimated___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITabBar_isCustomizing__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_isCustomizing__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_updateViews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_updateViews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

