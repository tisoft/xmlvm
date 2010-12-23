
#include "org_xmlvm_iphone_UITabBarControllerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UITabBarControllerDelegate __TIB_org_xmlvm_iphone_UITabBarControllerDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.UITabBarControllerDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UITabBarControllerDelegate()
{
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITabBarControllerDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITabBarControllerDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarControllerDelegate_shouldSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarControllerDelegate_didSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarControllerDelegate_willBeginCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarControllerDelegate_willEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarControllerDelegate_didEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITabBarControllerDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITabBarControllerDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITabBarControllerDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITabBarControllerDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarControllerDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UITabBarControllerDelegate.classInitialized) __INIT_org_xmlvm_iphone_UITabBarControllerDelegate();
    org_xmlvm_iphone_UITabBarControllerDelegate* me = (org_xmlvm_iphone_UITabBarControllerDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITabBarControllerDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UITabBarControllerDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITabBarControllerDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBarControllerDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITabBarControllerDelegate();
    org_xmlvm_iphone_UITabBarControllerDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITabBarControllerDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITabBarControllerDelegate_shouldSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_shouldSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarControllerDelegate_didSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_didSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarControllerDelegate_willBeginCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_willBeginCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarControllerDelegate_willEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_willEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarControllerDelegate_didEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarControllerDelegate_didEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

