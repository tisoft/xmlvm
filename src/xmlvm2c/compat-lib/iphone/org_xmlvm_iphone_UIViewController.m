#include "xmlvm.h"
#include "java_lang_String.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_NSString.h"
#include "org_xmlvm_iphone_UIBarButtonItem.h"
#include "org_xmlvm_iphone_UINavigationController.h"
#include "org_xmlvm_iphone_UINavigationItem.h"
#include "org_xmlvm_iphone_UITabBarController.h"
#include "org_xmlvm_iphone_UITabBarItem.h"
#include "org_xmlvm_iphone_UIView.h"

#include "org_xmlvm_iphone_UIViewController.h"

#define XMLVM_CURRENT_CLASS_NAME UIViewController
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIViewController

__TIB_DEFINITION_org_xmlvm_iphone_UIViewController __TIB_org_xmlvm_iphone_UIViewController = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIViewController, // classInitializer
    "org.xmlvm.iphone.UIViewController", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIResponder, // extends
    sizeof(org_xmlvm_iphone_UIViewController), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewController_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewController_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewController_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIKit.h>
#include "org_xmlvm_iphone_UIResponder.h"
#include "org_xmlvm_iphone_UINavigationController.h"
#include "org_xmlvm_iphone_UINavigationItem.h"
#include "org_xmlvm_iphone_UITabBarController.h"
#include "org_xmlvm_iphone_NSString.h"

@interface UIViewControllerWrapper : UIViewController
{
	// A pointer back to the C object
	@public org_xmlvm_iphone_UIViewController* wrappedCObj;
}
- (void) loadView;
- (void) superLoadView;
- (void) superViewDidLoad;
- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration;
- (void) viewWillAppear:(BOOL)animated;
- (void) viewDidLoad;
- (void) viewDidUnload;
- (void) viewWillDisappear:(BOOL)anim;
- (void) viewDidAppear:(BOOL)anim;
- (void) viewDidDisappear:(BOOL)anim;
- (void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)orientation duration:(NSTimeInterval)duration;
- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)orientation;
- (void) willAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)orientation duration:(NSTimeInterval)duration;
- (void) didAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)orientation;
- (void) willAnimateSecondHalfOfRotationFromInterfaceOrientation:(UIInterfaceOrientation)orientation duration:(double)duration;

@end

@implementation UIViewControllerWrapper

- (void) loadView
{
	// Get the function pointer to method loadView by accessing the vtable of the C object
	Func_VO loadViewFunc = 
	self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_loadView__];
    loadViewFunc(self->wrappedCObj);
}

- (void) superLoadView
{
    [super loadView];
}

- (void) superViewDidLoad
{
    [super viewDidLoad];
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_shouldAutorotateToInterfaceOrientation___int
	Func_BOI func = 
	(Func_BOI) self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_shouldAutorotateToInterfaceOrientation___int];
    return func(self->wrappedCObj, interfaceOrientation);
#else
    return NO;
#endif
}

- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_willAnimateRotationToInterfaceOrientation___int_double
    Func_VOID func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_willAnimateRotationToInterfaceOrientation___int_double];
    func(self->wrappedCObj, interfaceOrientation, duration);
#endif
}

- (void) viewWillAppear:(BOOL)animated
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewWillAppear___boolean
    Func_VOB func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewWillAppear___boolean];
    func(self->wrappedCObj, animated);
#endif
}

- (void) viewDidLoad
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewDidLoad__
    Func_VO func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewDidLoad__];
    func(self->wrappedCObj);
#endif
}

- (void) viewDidUnload
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewDidUnload__
    Func_VO func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewDidUnload__];
    func(self->wrappedCObj);
#endif
}

- (void) viewWillDisappear:(BOOL)animated
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewWillDisappear___boolean
    Func_VOB func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewWillDisappear___boolean];
    func(self->wrappedCObj, animated);
#endif
}

- (void) viewDidAppear:(BOOL)animated
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewDidAppear___boolean
    Func_VOB func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewDidAppear___boolean];
    func(self->wrappedCObj, animated);
#endif
}

- (void) viewDidDisappear:(BOOL)animated
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewDidDisappear___boolean
    Func_VOB func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_viewDidDisappear___boolean];
    func(self->wrappedCObj, animated);
#endif
}

- (void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)orientation duration:(NSTimeInterval)duration
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_willRotateToInterfaceOrientation___int_double
    Func_VOID func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_willRotateToInterfaceOrientation___int_double];
    func(self->wrappedCObj, orientation, duration);
#endif
}

- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)orientation
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_didRotateFromInterfaceOrientation___int
    Func_VOI func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_didRotateFromInterfaceOrientation___int];
    func(self->wrappedCObj, orientation);
#endif
}

- (void) willAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)orientation duration:(NSTimeInterval)duration
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_willAnimateFirstHalfOfRotationFromInterfaceOrientation___int_double
    Func_VOID func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_willAnimateFirstHalfOfRotationFromInterfaceOrientation___int_double];
    func(self->wrappedCObj, orientation, duration);
#endif
}

- (void) didAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)orientation
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_didAnimateFirstHalfOfRotationToInterfaceOrientation___int
    Func_VOI func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_didAnimateFirstHalfOfRotationToInterfaceOrientation___int];
    func(self->wrappedCObj, orientation);
#endif
}

- (void) willAnimateSecondHalfOfRotationFromInterfaceOrientation:(UIInterfaceOrientation)orientation duration:(double)duration
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_willAnimateSecondHalfOfRotationFromInterfaceOrientation___int_double
    Func_VOID func = self->wrappedCObj->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewController_willAnimateSecondHalfOfRotationFromInterfaceOrientation___int_double];
    func(self->wrappedCObj, orientation, duration);
#endif
}

@end



void org_xmlvm_iphone_UIViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_UIResponder_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"pcontroller",
    &__CLASS_org_xmlvm_iphone_UIViewController,
    0,
    XMLVM_OFFSETOF(org_xmlvm_iphone_UIViewController, fields.org_xmlvm_iphone_UIViewController.pcontroller_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIViewController();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIViewController___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method12_arg_types[] = {
};

static JAVA_OBJECT* __method13_arg_types[] = {
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_int,
    &__CLASS_double,
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_int,
    &__CLASS_double,
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_int,
    &__CLASS_double,
};

static JAVA_OBJECT* __method18_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method19_arg_types[] = {
    &__CLASS_int,
    &__CLASS_double,
};

static JAVA_OBJECT* __method20_arg_types[] = {
};

static JAVA_OBJECT* __method21_arg_types[] = {
};

static JAVA_OBJECT* __method22_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIView,
};

static JAVA_OBJECT* __method23_arg_types[] = {
};

static JAVA_OBJECT* __method24_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method25_arg_types[] = {
};

static JAVA_OBJECT* __method26_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method27_arg_types[] = {
};

static JAVA_OBJECT* __method28_arg_types[] = {
};

static JAVA_OBJECT* __method29_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method30_arg_types[] = {
};

static JAVA_OBJECT* __method31_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method32_arg_types[] = {
};

static JAVA_OBJECT* __method33_arg_types[] = {
};

static JAVA_OBJECT* __method34_arg_types[] = {
};

static JAVA_OBJECT* __method35_arg_types[] = {
};

static JAVA_OBJECT* __method36_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method37_arg_types[] = {
    &__CLASS_boolean,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method38_arg_types[] = {
};

static JAVA_OBJECT* __method39_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method40_arg_types[] = {
};

static JAVA_OBJECT* __method41_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIViewController,
};

static JAVA_OBJECT* __method42_arg_types[] = {
};

static JAVA_OBJECT* __method43_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITabBarItem,
};

static JAVA_OBJECT* __method44_arg_types[] = {
};

static JAVA_OBJECT* __method45_arg_types[] = {
    &__CLASS_java_util_ArrayList,
};

static JAVA_OBJECT* __method46_arg_types[] = {
    &__CLASS_java_util_ArrayList,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method47_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIViewController,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method48_arg_types[] = {
    &__CLASS_boolean,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"loadView",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isViewLoaded",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"viewDidLoad",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"viewDidUnload",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"viewWillAppearInternal",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"requestInternalFrame",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"updateViews",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"viewWillAppear",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"viewDidAppear",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"viewWillDisappear",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"viewDidDisappear",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"shouldAutorotateToInterfaceOrientation",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"rotatingHeaderView",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"rotatingFooterView",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"willRotateToInterfaceOrientation",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"willAnimateRotationToInterfaceOrientation",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didRotateFromInterfaceOrientation",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"willAnimateFirstHalfOfRotationToInterfaceOrientation",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didAnimateFirstHalfOfRotationToInterfaceOrientation",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"willAnimateSecondHalfOfRotationFromInterfaceOrientation",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didReceiveMemoryWarning",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getView",
    &__method21_arg_types[0],
    sizeof(__method21_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setView",
    &__method22_arg_types[0],
    sizeof(__method22_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTitle",
    &__method23_arg_types[0],
    sizeof(__method23_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTitle",
    &__method24_arg_types[0],
    sizeof(__method24_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"wantsFullScreenLayout",
    &__method25_arg_types[0],
    sizeof(__method25_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setWantsFullScreenLayout",
    &__method26_arg_types[0],
    sizeof(__method26_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getInterfaceOrientation",
    &__method27_arg_types[0],
    sizeof(__method27_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getModalPresentationStyle",
    &__method28_arg_types[0],
    sizeof(__method28_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setModalPresentationStyle",
    &__method29_arg_types[0],
    sizeof(__method29_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getModalTransitionStyle",
    &__method30_arg_types[0],
    sizeof(__method30_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setModalTransitionStyle",
    &__method31_arg_types[0],
    sizeof(__method31_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getNavigationController",
    &__method32_arg_types[0],
    sizeof(__method32_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getNavigationItem",
    &__method33_arg_types[0],
    sizeof(__method33_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"editButtonItem",
    &__method34_arg_types[0],
    sizeof(__method34_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isEditing",
    &__method35_arg_types[0],
    sizeof(__method35_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setEditing",
    &__method36_arg_types[0],
    sizeof(__method36_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setEditing",
    &__method37_arg_types[0],
    sizeof(__method37_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"hidesBottomBarWhenPushed",
    &__method38_arg_types[0],
    sizeof(__method38_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setHidesBottomBarWhenPushed",
    &__method39_arg_types[0],
    sizeof(__method39_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTabBarController",
    &__method40_arg_types[0],
    sizeof(__method40_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setParentController",
    &__method41_arg_types[0],
    sizeof(__method41_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTabBarItem",
    &__method42_arg_types[0],
    sizeof(__method42_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTabBarItem",
    &__method43_arg_types[0],
    sizeof(__method43_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getToolbarItems",
    &__method44_arg_types[0],
    sizeof(__method44_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setToolbarItems",
    &__method45_arg_types[0],
    sizeof(__method45_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setToolbarItems",
    &__method46_arg_types[0],
    sizeof(__method46_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"presentModalViewController",
    &__method47_arg_types[0],
    sizeof(__method47_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"dismissModalViewControllerAnimated",
    &__method48_arg_types[0],
    sizeof(__method48_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_UIViewController_loadView__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_UIViewController_isViewLoaded__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UIViewController_viewDidLoad__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_UIViewController_viewDidUnload__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UIViewController_viewWillAppearInternal___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 5:
        org_xmlvm_iphone_UIViewController_requestInternalFrame__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_UIViewController_updateViews__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_UIViewController_viewWillAppear___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 8:
        org_xmlvm_iphone_UIViewController_viewDidAppear___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 9:
        org_xmlvm_iphone_UIViewController_viewWillDisappear___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 10:
        org_xmlvm_iphone_UIViewController_viewDidDisappear___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 11:
        org_xmlvm_iphone_UIViewController_shouldAutorotateToInterfaceOrientation___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 12:
        org_xmlvm_iphone_UIViewController_rotatingHeaderView__(receiver);
        break;
    case 13:
        org_xmlvm_iphone_UIViewController_rotatingFooterView__(receiver);
        break;
    case 14:
        org_xmlvm_iphone_UIViewController_willRotateToInterfaceOrientation___int_double(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_);
        break;
    case 15:
        org_xmlvm_iphone_UIViewController_willAnimateRotationToInterfaceOrientation___int_double(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_);
        break;
    case 16:
        org_xmlvm_iphone_UIViewController_didRotateFromInterfaceOrientation___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 17:
        org_xmlvm_iphone_UIViewController_willAnimateFirstHalfOfRotationToInterfaceOrientation___int_double(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_);
        break;
    case 18:
        org_xmlvm_iphone_UIViewController_didAnimateFirstHalfOfRotationToInterfaceOrientation___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 19:
        org_xmlvm_iphone_UIViewController_willAnimateSecondHalfOfRotationFromInterfaceOrientation___int_double(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_);
        break;
    case 20:
        org_xmlvm_iphone_UIViewController_didReceiveMemoryWarning__(receiver);
        break;
    case 21:
        org_xmlvm_iphone_UIViewController_getView__(receiver);
        break;
    case 22:
        org_xmlvm_iphone_UIViewController_setView___org_xmlvm_iphone_UIView(receiver, argsArray[0]);
        break;
    case 23:
        org_xmlvm_iphone_UIViewController_getTitle__(receiver);
        break;
    case 24:
        org_xmlvm_iphone_UIViewController_setTitle___java_lang_String(receiver, argsArray[0]);
        break;
    case 25:
        org_xmlvm_iphone_UIViewController_wantsFullScreenLayout__(receiver);
        break;
    case 26:
        org_xmlvm_iphone_UIViewController_setWantsFullScreenLayout___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 27:
        org_xmlvm_iphone_UIViewController_getInterfaceOrientation__(receiver);
        break;
    case 28:
        org_xmlvm_iphone_UIViewController_getModalPresentationStyle__(receiver);
        break;
    case 29:
        org_xmlvm_iphone_UIViewController_setModalPresentationStyle___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 30:
        org_xmlvm_iphone_UIViewController_getModalTransitionStyle__(receiver);
        break;
    case 31:
        org_xmlvm_iphone_UIViewController_setModalTransitionStyle___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 32:
        org_xmlvm_iphone_UIViewController_getNavigationController__(receiver);
        break;
    case 33:
        org_xmlvm_iphone_UIViewController_getNavigationItem__(receiver);
        break;
    case 34:
        org_xmlvm_iphone_UIViewController_editButtonItem__(receiver);
        break;
    case 35:
        org_xmlvm_iphone_UIViewController_isEditing__(receiver);
        break;
    case 36:
        org_xmlvm_iphone_UIViewController_setEditing___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 37:
        org_xmlvm_iphone_UIViewController_setEditing___boolean_boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_, ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 38:
        org_xmlvm_iphone_UIViewController_hidesBottomBarWhenPushed__(receiver);
        break;
    case 39:
        org_xmlvm_iphone_UIViewController_setHidesBottomBarWhenPushed___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 40:
        org_xmlvm_iphone_UIViewController_getTabBarController__(receiver);
        break;
    case 41:
        org_xmlvm_iphone_UIViewController_setParentController___org_xmlvm_iphone_UIViewController(receiver, argsArray[0]);
        break;
    case 42:
        org_xmlvm_iphone_UIViewController_getTabBarItem__(receiver);
        break;
    case 43:
        org_xmlvm_iphone_UIViewController_setTabBarItem___org_xmlvm_iphone_UITabBarItem(receiver, argsArray[0]);
        break;
    case 44:
        org_xmlvm_iphone_UIViewController_getToolbarItems__(receiver);
        break;
    case 45:
        org_xmlvm_iphone_UIViewController_setToolbarItems___java_util_ArrayList(receiver, argsArray[0]);
        break;
    case 46:
        org_xmlvm_iphone_UIViewController_setToolbarItems___java_util_ArrayList_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 47:
        org_xmlvm_iphone_UIViewController_presentModalViewController___org_xmlvm_iphone_UIViewController_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 48:
        org_xmlvm_iphone_UIViewController_dismissModalViewControllerAnimated___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIViewController()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIViewController);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIViewController.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIViewController.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIViewController);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIViewController.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIViewController.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIViewController.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIViewController();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIViewController()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIResponder.classInitialized) __INIT_org_xmlvm_iphone_UIResponder();
    __TIB_org_xmlvm_iphone_UIViewController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIViewController.vtable, __TIB_org_xmlvm_iphone_UIResponder.vtable, sizeof(__TIB_org_xmlvm_iphone_UIResponder.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIViewController.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_loadView__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_requestInternalFrame__;
    __TIB_org_xmlvm_iphone_UIViewController.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_UIViewController_updateViews__;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIViewController.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIViewController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIViewController.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewController.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewController.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewController.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewController.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewController.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIViewController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIViewController);
    __TIB_org_xmlvm_iphone_UIViewController.clazz = __CLASS_org_xmlvm_iphone_UIViewController;
    __TIB_org_xmlvm_iphone_UIViewController.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIViewController_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewController);
    __CLASS_org_xmlvm_iphone_UIViewController_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewController_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIViewController_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewController_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewController]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIViewController.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIViewController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewController]
    __DELETE_org_xmlvm_iphone_UIResponder(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewController(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIResponder(me, 0 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_UIViewController*) me)->fields.org_xmlvm_iphone_UIViewController.pcontroller_ = (org_xmlvm_iphone_UIViewController*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewController()
{
    if (!__TIB_org_xmlvm_iphone_UIViewController.classInitialized) __INIT_org_xmlvm_iphone_UIViewController();
    org_xmlvm_iphone_UIViewController* me = (org_xmlvm_iphone_UIViewController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewController));
    me->tib = &__TIB_org_xmlvm_iphone_UIViewController;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewController(me, 0);
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
    UIViewControllerWrapper* obj = [[UIViewControllerWrapper alloc] init];
    obj->wrappedCObj = me;
    org_xmlvm_iphone_UIResponder_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_loadView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_loadView__]
    XMLVM_VAR_THIZ;
    [thiz superLoadView];
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
    XMLVM_VAR_THIZ;
    [thiz superViewDidLoad];
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
    // Do nothing
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
    return 1;
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
    XMLVM_VAR_THIZ;
    UIView* view = thiz.view;
    return xmlvm_get_associated_c_object(view);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_setView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_setView___org_xmlvm_iphone_UIView]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS(UIView, view, n1);
    [thiz setView:view];
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
    XMLVM_VAR_THIZ;
    XMLVM_VAR_NSString(title, n1);
    [thiz setTitle:title];
    [title release];
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
    XMLVM_VAR_THIZ;
    return thiz.interfaceOrientation;
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIViewController_getModalPresentationStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_getModalPresentationStyle__]
    XMLVM_VAR_THIZ;
    return thiz.modalPresentationStyle;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_setModalPresentationStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_setModalPresentationStyle___int]
    XMLVM_VAR_THIZ;
    thiz.modalPresentationStyle = n1;
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIViewController_getModalTransitionStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_getModalTransitionStyle__]
    XMLVM_VAR_THIZ;
    return thiz.modalTransitionStyle;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_setModalTransitionStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_setModalTransitionStyle___int]
    XMLVM_VAR_THIZ;
    thiz.modalTransitionStyle = n1;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewController_getNavigationController__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_getNavigationController__]
    XMLVM_VAR_THIZ;
    
    UINavigationController* c = thiz.navigationController;
    return xmlvm_get_associated_c_object(c);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewController_getNavigationItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_getNavigationItem__]
    XMLVM_VAR_THIZ;
    if (!__TIB_org_xmlvm_iphone_UINavigationItem.classInitialized) __INIT_org_xmlvm_iphone_UINavigationItem();
    return xmlvm_get_associated_c_object(thiz.navigationItem);
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
    XMLVM_VAR_THIZ;
    
    UITabBarController* c = thiz.tabBarController;
    return xmlvm_get_associated_c_object(c);
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
    // TODO: this implementation will return a new wrapper for each call
    // to getTabBarItem(). One could save the wrapper in a local field and
    // check if the wrapped Objective-C object has changed between calls to getTabBarItem()
    XMLVM_VAR_THIZ;
    UITabBarItem* item = thiz.tabBarItem;
    // Make sure class is initialized to ensure that the wrapper creator is registered
    if (!__TIB_org_xmlvm_iphone_UITabBarItem.classInitialized) __INIT_org_xmlvm_iphone_UITabBarItem();
    return xmlvm_get_associated_c_object(item);
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
    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS(UIViewController, viewController, n1);
    XMLVM_VAR_BOOLEAN(animated, n2);
    [thiz presentModalViewController:viewController animated:animated];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewController_dismissModalViewControllerAnimated___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewController_dismissModalViewControllerAnimated___boolean]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_BOOLEAN(animated, n1);
    [thiz dismissModalViewControllerAnimated:animated];
    //XMLVM_END_WRAPPER
}

