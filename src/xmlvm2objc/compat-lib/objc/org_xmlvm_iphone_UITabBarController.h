
/** @author teras */

#import "xmlvm.h"

#import "java_util_ArrayList.h"
#import "org_xmlvm_iphone_UINavigationController.h"
#import "org_xmlvm_iphone_UIViewController.h"
#import "org_xmlvm_iphone_UITabBar.h"
@class org_xmlvm_iphone_UITabBarControllerDelegate;


typedef UITabBarController org_xmlvm_iphone_UITabBarController;

@interface UITabBarController (cat_org_xmlvm_iphone_UITabBarController)

- (void) __init_org_xmlvm_iphone_UITabBarController__;
- (java_util_ArrayList*) getCustomizableViewControllers__;
- (void) setCustomizableViewControllers___java_util_ArrayList :(java_util_ArrayList*)n1;
- (org_xmlvm_iphone_UITabBarControllerDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate :(org_xmlvm_iphone_UITabBarControllerDelegate*)n1;
- (org_xmlvm_iphone_UINavigationController*) getMoreNavigationController__;
- (org_xmlvm_iphone_UIViewController*) getSelectedViewController__;
- (void) setSelectedViewController___org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UIViewController*)n1;
- (int) getSelectedIndex__;
- (void) setSelectedIndex___int :(int)n1;
- (org_xmlvm_iphone_UITabBar*) getTabBar__;
- (java_util_ArrayList*) getViewControllers__;
- (void) setViewControllers___java_util_ArrayList :(java_util_ArrayList*)n1;
- (void) setViewControllers___java_util_ArrayList_boolean :(java_util_ArrayList*)n1 :(int)n2;

@end

