#include "java_lang_String.h"

#include "org_xmlvm_iphone_UITabBarItem.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITabBarItem __CLASS_org_xmlvm_iphone_UITabBarItem = {
    0, // classInitialized
    "org.xmlvm.iphone.UITabBarItem", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIBarItem, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UITabBarItem()
{
    __CLASS_org_xmlvm_iphone_UITabBarItem.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIBarItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarItem();
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITabBarItem.vtable, __CLASS_org_xmlvm_iphone_UIBarItem.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIBarItem.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UITabBarItem.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarItem_getBadgeValue__;
    __CLASS_org_xmlvm_iphone_UITabBarItem.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarItem_setBadgeValue___java_lang_String;
    __CLASS_org_xmlvm_iphone_UITabBarItem.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarItem_setTitle___java_lang_String;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITabBarItem.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITabBarItem.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITabBarItem]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarItem()
{
    if (!__CLASS_org_xmlvm_iphone_UITabBarItem.classInitialized) __INIT_org_xmlvm_iphone_UITabBarItem();
    org_xmlvm_iphone_UITabBarItem* me = (org_xmlvm_iphone_UITabBarItem*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITabBarItem));
    me->__class = &__CLASS_org_xmlvm_iphone_UITabBarItem;
    me->org_xmlvm_iphone_UITabBarItem.view_ = (org_xmlvm_iphone_internal_UITabBarItemView*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITabBarItem]
    //XMLVM_END_WRAPPER
    return me;
}

void __DELETE_org_xmlvm_iphone_UITabBarItem(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITabBarItem]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarItem___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarItem___INIT___]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarItem_getBadgeValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarItem_getBadgeValue__]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarItem_setBadgeValue___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarItem_setBadgeValue___java_lang_String]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarItem_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarItem_setTitle___java_lang_String]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarItem_access$000___org_xmlvm_iphone_UITabBarItem(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UITabBarItem.classInitialized) __INIT_org_xmlvm_iphone_UITabBarItem();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarItem_access$000___org_xmlvm_iphone_UITabBarItem]
    //XMLVM_END_WRAPPER
}

