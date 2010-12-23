
#include "org_xmlvm_iphone_UITabBarDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UITabBarDelegate __TIB_org_xmlvm_iphone_UITabBarDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.UITabBarDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UITabBarDelegate()
{
    __TIB_org_xmlvm_iphone_UITabBarDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UITabBarDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITabBarDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITabBarDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UITabBarDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarDelegate_willBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList;
    __TIB_org_xmlvm_iphone_UITabBarDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarDelegate_didBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList;
    __TIB_org_xmlvm_iphone_UITabBarDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarDelegate_willEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean;
    __TIB_org_xmlvm_iphone_UITabBarDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarDelegate_didEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITabBarDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITabBarDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITabBarDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITabBarDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITabBarDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UITabBarDelegate.classInitialized) __INIT_org_xmlvm_iphone_UITabBarDelegate();
    org_xmlvm_iphone_UITabBarDelegate* me = (org_xmlvm_iphone_UITabBarDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITabBarDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UITabBarDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITabBarDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBarDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITabBarDelegate();
    org_xmlvm_iphone_UITabBarDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITabBarDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarDelegate_willBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarDelegate_willBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarDelegate_didBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarDelegate_didBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarDelegate_willEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarDelegate_willEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarDelegate_didEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarDelegate_didEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

