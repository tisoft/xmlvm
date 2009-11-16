
/** @author teras */

#import "xmlvm.h"

#import "org_xmlvm_iphone_UIViewController.h"
#import "java_util_ArrayList.h"
#import "org_xmlvm_iphone_UINavigationBar.h"
#import "org_xmlvm_iphone_UIToolbar.h"
@class org_xmlvm_iphone_UINavigationControllerDelegate;


typedef UINavigationController org_xmlvm_iphone_UINavigationController;

@interface UINavigationController (cat_org_xmlvm_iphone_UINavigationController)

- (void) __init_org_xmlvm_iphone_UINavigationController___org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UIViewController*)n1;
- (org_xmlvm_iphone_UIViewController*) getTopViewController__;
- (org_xmlvm_iphone_UIViewController*) getVisibleViewController__;
- (java_util_ArrayList*) getViewControllers__;
- (void) setViewControllers___java_util_ArrayList :(java_util_ArrayList*)n1;
- (void) setViewControllers___java_util_ArrayList_boolean :(java_util_ArrayList*)n1 :(int)n2;
- (void) pushViewController___org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UIViewController*)n1 :(int)n2;
- (org_xmlvm_iphone_UIViewController*) popViewControllerAnimated___boolean :(int)n1;
- (java_util_ArrayList*) popToRootViewControllerAnimated___boolean :(int)n1;
- (java_util_ArrayList*) popToViewController___org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UIViewController*)n1 :(int)n2;
- (int) isNavigationBarHidden__;
- (void) setNavigationBarHidden___boolean :(int)n1;
- (void) setNavigationBarHidden___boolean_boolean :(int)n1 :(int)n2;
- (org_xmlvm_iphone_UINavigationBar*) getNavigationBar__;
- (int) isToolbarHidden__;
- (void) setToolbarHidden___boolean :(int)n1;
- (void) setToolbarHidden___boolean_boolean :(int)n1 :(int)n2;
- (org_xmlvm_iphone_UIToolbar*) getToolbar__;
- (void) setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate :(org_xmlvm_iphone_UINavigationControllerDelegate*)n1;
- (org_xmlvm_iphone_UINavigationControllerDelegate*) getNavigationDelegate__;

@end

