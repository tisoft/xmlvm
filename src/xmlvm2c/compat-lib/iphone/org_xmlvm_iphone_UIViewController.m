#include "org_xmlvm_iphone_UIView.h"
#include "org_xmlvm_iphone_UIBarButtonItem.h"
#include "org_xmlvm_iphone_UINavigationItem.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UITabBarController.h"
#include "org_xmlvm_iphone_UINavigationController.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UITabBarItem.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIViewController.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIViewController __TIB_org_xmlvm_iphone_UIViewController = {
    0, // classInitialized
    "org.xmlvm.iphone.UIViewController", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIResponder, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIViewController()
{
    __TIB_org_xmlvm_iphone_UIViewController.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIResponder.classInitialized) __INIT_org_xmlvm_iphone_UIResponder();
    __TIB_org_xmlvm_iphone_UIViewController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIViewController.vtable, __TIB_org_xmlvm_iphone_UIResponder.vtable, sizeof(__TIB_org_xmlvm_iphone_UIResponder.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIViewController.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_loadView__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_isViewLoaded__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_viewDidLoad__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_viewDidUnload__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_viewWillAppearInternal___boolean;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_requestInternalFrame__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_updateViews__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_viewWillAppear___boolean;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_viewDidAppear___boolean;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_viewWillDisappear___boolean;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[31] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_viewDidDisappear___boolean;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[32] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_shouldAutorotateToInterfaceOrientation___int;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[33] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_rotatingHeaderView__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[34] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_rotatingFooterView__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[35] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_willRotateToInterfaceOrientation___int_double;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[36] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_willAnimateRotationToInterfaceOrientation___int_double;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[37] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_didRotateFromInterfaceOrientation___int;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[38] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_willAnimateFirstHalfOfRotationToInterfaceOrientation___int_double;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[39] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_didAnimateFirstHalfOfRotationToInterfaceOrientation___int;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[40] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_willAnimateSecondHalfOfRotationFromInterfaceOrientation___int_double;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[41] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_didReceiveMemoryWarning__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[42] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_getView__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[43] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_setView___org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[44] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_getTitle__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[45] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_setTitle___java_lang_String;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[46] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_wantsFullScreenLayout__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[47] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_setWantsFullScreenLayout___boolean;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[48] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_getInterfaceOrientation__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[49] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_getNavigationController__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[50] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_getNavigationItem__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[51] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_editButtonItem__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[52] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_isEditing__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[53] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_setEditing___boolean;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[54] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_setEditing___boolean_boolean;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[55] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_hidesBottomBarWhenPushed__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[56] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_setHidesBottomBarWhenPushed___boolean;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[57] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_getTabBarController__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[58] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_setParentController___org_xmlvm_iphone_UIViewController;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[59] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_getTabBarItem__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[60] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_setTabBarItem___org_xmlvm_iphone_UITabBarItem;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[61] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_getToolbarItems__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[62] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_setToolbarItems___java_util_ArrayList;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[63] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_setToolbarItems___java_util_ArrayList_boolean;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[64] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_presentModalViewController___org_xmlvm_iphone_UIViewController_boolean;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[65] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_dismissModalViewControllerAnimated___boolean;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIViewController.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIViewController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewController]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIViewController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewController()
{
    if (!__TIB_org_xmlvm_iphone_UIViewController.classInitialized) __INIT_org_xmlvm_iphone_UIViewController();
    org_xmlvm_iphone_UIViewController* me = (org_xmlvm_iphone_UIViewController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewController));
    me->tib = &__TIB_org_xmlvm_iphone_UIViewController;
    me->fields.org_xmlvm_iphone_UIViewController.pcontroller_ = (org_xmlvm_iphone_UIViewController*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIViewController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIViewController();
    org_xmlvm_iphone_UIViewController___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIViewController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_loadView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_loadView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIViewController_isViewLoaded__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_isViewLoaded__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_viewDidLoad__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_viewDidLoad__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_viewDidUnload__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_viewDidUnload__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_viewWillAppearInternal___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_viewWillAppearInternal___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewController_requestInternalFrame__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_requestInternalFrame__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_updateViews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_updateViews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_viewWillAppear___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_viewWillAppear___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_viewDidAppear___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_viewDidAppear___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_viewWillDisappear___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_viewWillDisappear___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_viewDidDisappear___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_viewDidDisappear___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIViewController_shouldAutorotateToInterfaceOrientation___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_shouldAutorotateToInterfaceOrientation___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewController_rotatingHeaderView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_rotatingHeaderView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewController_rotatingFooterView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_rotatingFooterView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_willRotateToInterfaceOrientation___int_double(JAVA_OBJECT me, JAVA_INT n1, JAVA_DOUBLE n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_willRotateToInterfaceOrientation___int_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_willAnimateRotationToInterfaceOrientation___int_double(JAVA_OBJECT me, JAVA_INT n1, JAVA_DOUBLE n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_willAnimateRotationToInterfaceOrientation___int_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_didRotateFromInterfaceOrientation___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_didRotateFromInterfaceOrientation___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_willAnimateFirstHalfOfRotationToInterfaceOrientation___int_double(JAVA_OBJECT me, JAVA_INT n1, JAVA_DOUBLE n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_willAnimateFirstHalfOfRotationToInterfaceOrientation___int_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_didAnimateFirstHalfOfRotationToInterfaceOrientation___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_didAnimateFirstHalfOfRotationToInterfaceOrientation___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_willAnimateSecondHalfOfRotationFromInterfaceOrientation___int_double(JAVA_OBJECT me, JAVA_INT n1, JAVA_DOUBLE n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_willAnimateSecondHalfOfRotationFromInterfaceOrientation___int_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_didReceiveMemoryWarning__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_didReceiveMemoryWarning__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewController_getView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_getView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_setView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_setView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewController_getTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_getTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIViewController_wantsFullScreenLayout__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_wantsFullScreenLayout__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_setWantsFullScreenLayout___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_setWantsFullScreenLayout___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIViewController_getInterfaceOrientation__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_getInterfaceOrientation__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewController_getNavigationController__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_getNavigationController__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewController_getNavigationItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_getNavigationItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewController_editButtonItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_editButtonItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIViewController_isEditing__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_isEditing__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_setEditing___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_setEditing___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_setEditing___boolean_boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_setEditing___boolean_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIViewController_hidesBottomBarWhenPushed__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_hidesBottomBarWhenPushed__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_setHidesBottomBarWhenPushed___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_setHidesBottomBarWhenPushed___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewController_getTabBarController__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_getTabBarController__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_setParentController___org_xmlvm_iphone_UIViewController(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_setParentController___org_xmlvm_iphone_UIViewController]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewController_getTabBarItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_getTabBarItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_setTabBarItem___org_xmlvm_iphone_UITabBarItem(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_setTabBarItem___org_xmlvm_iphone_UITabBarItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewController_getToolbarItems__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_getToolbarItems__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_setToolbarItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_setToolbarItems___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_setToolbarItems___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_setToolbarItems___java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_presentModalViewController___org_xmlvm_iphone_UIViewController_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_presentModalViewController___org_xmlvm_iphone_UIViewController_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_dismissModalViewControllerAnimated___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_dismissModalViewControllerAnimated___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

