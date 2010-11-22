#include "org_xmlvm_iphone_UITabBarControllerDelegate.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UINavigationController.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UITabBar.h"

#include "org_xmlvm_iphone_UITabBarController.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UITabBarController __CLASS_org_xmlvm_iphone_UITabBarController = {
    0, // classInitialized
    "org.xmlvm.iphone.UITabBarController", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIViewController, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UITabBarController()
{
    __CLASS_org_xmlvm_iphone_UITabBarController.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIViewController.classInitialized) __INIT_org_xmlvm_iphone_UIViewController();
    __CLASS_org_xmlvm_iphone_UITabBarController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITabBarController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UITabBarController.vtable, __CLASS_org_xmlvm_iphone_UIViewController.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIViewController.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_requestInternalFrame__;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[66] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getCustomizableViewControllers__;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[67] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_setCustomizableViewControllers___java_util_ArrayList;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[68] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getDelegate__;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[69] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getMoreNavigationController__;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getSelectedViewController__;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_setSelectedViewController___org_xmlvm_iphone_UIViewController;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getSelectedIndex__;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_setSelectedIndex___int;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getTabBar__;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getViewControllers__;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList_boolean;
    __CLASS_org_xmlvm_iphone_UITabBarController.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_updateViews__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UITabBarController.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UITabBarController.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITabBarController]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITabBarController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITabBarController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarController()
{
    if (!__CLASS_org_xmlvm_iphone_UITabBarController.classInitialized) __INIT_org_xmlvm_iphone_UITabBarController();
    org_xmlvm_iphone_UITabBarController* me = (org_xmlvm_iphone_UITabBarController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITabBarController));
    me->__class = &__CLASS_org_xmlvm_iphone_UITabBarController;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITabBarController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBarController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITabBarController();
    org_xmlvm_iphone_UITabBarController___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITabBarController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_requestInternalFrame__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_requestInternalFrame__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getCustomizableViewControllers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getCustomizableViewControllers__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setCustomizableViewControllers___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setCustomizableViewControllers___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getMoreNavigationController__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getMoreNavigationController__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getSelectedViewController__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getSelectedViewController__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setSelectedViewController___org_xmlvm_iphone_UIViewController(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setSelectedViewController___org_xmlvm_iphone_UIViewController]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITabBarController_getSelectedIndex__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getSelectedIndex__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setSelectedIndex___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setSelectedIndex___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getTabBar__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getTabBar__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getViewControllers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getViewControllers__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_updateViews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_updateViews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

