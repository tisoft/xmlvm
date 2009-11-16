
/** @author teras */

#import "xmlvm.h"

#import "org_xmlvm_iphone_UIView.h"
#import "java_util_ArrayList.h"
#import "java_lang_String.h"
@class org_xmlvm_iphone_UINavigationController;
@class org_xmlvm_iphone_UITabBarController;
@class org_xmlvm_iphone_UITabBarItem;

typedef UIViewController org_xmlvm_iphone_UIViewController;

@interface UIViewController (cat_org_xmlvm_iphone_UIViewController)

- (void) __init_org_xmlvm_iphone_UIViewController__;

- (void) loadView__;
- (int) isViewLoaded__;
- (void) viewDidLoad__;
- (void) viewDidUnload__;
- (org_xmlvm_iphone_UIView*) rotatingHeaderView__;
- (org_xmlvm_iphone_UIView*) rotatingFooterView__;
- (void) didReceiveMemoryWarning__;
- (int) wantsFullScreenLayout__;
- (int) getInterfaceOrientation__;
- (org_xmlvm_iphone_UINavigationController*) getNavigationController__;
- (int) isEditing__;
- (int) hidesBottomBarWhenPushed__;
- (org_xmlvm_iphone_UITabBarController*) getTabBarController__;
- (org_xmlvm_iphone_UITabBarItem*) getTabBarItem__;
- (void) setTabBarItem___org_xmlvm_iphone_UITabBarItem :(org_xmlvm_iphone_UITabBarItem*)n1;
- (java_util_ArrayList*) getToolbarItems__;
- (void) setToolbarItems___java_util_ArrayList :(java_util_ArrayList*)n1;
- (void) setToolbarItems___java_util_ArrayList_boolean :(java_util_ArrayList*)n1 :(int)n2;

- (void) viewWillAppear___boolean :(int)n1;
- (void) viewWillDisappear___boolean :(int)n1;
- (void) viewDidAppear___boolean :(int)n1;
- (void) viewDidDisappear___boolean :(int)n1;
- (int) shouldAutorotateToInterfaceOrientation___int :(int)n1;
- (void) willRotateToInterfaceOrientation___int_double :(int)n1 :(double)n2;
- (void) willAnimateRotationToInterfaceOrientation___int_double :(int)n1 :(double)n2;
- (void) didRotateFromInterfaceOrientation___int :(int)n1;
- (void) willAnimateFirstHalfOfRotationToInterfaceOrientation___int_double :(int)n1 :(double)n2;
- (void) didAnimateFirstHalfOfRotationToInterfaceOrientation___int :(int)n1;
- (void) willAnimateSecondHalfOfRotationFromInterfaceOrientation___int_double :(int)n1 :(double)n2;
- (org_xmlvm_iphone_UIView*) getView__;
- (void) setView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
- (java_lang_String*) getTitle__;
- (void) setTitle___java_lang_String :(java_lang_String*)n1;
- (void) setWantsFullScreenLayout___boolean :(int)n1;
- (org_xmlvm_iphone_UINavigationController*) getNavigationController__;
- (void) setEditing___boolean :(int)n1;
- (void) setEditing___boolean_boolean :(int)n1 :(int)n2;
- (void) setHidesBottomBarWhenPushed___boolean :(int)n1;

@end

