
/** @author teras */

#import "xmlvm.h"
#import "java_util_ArrayList.h"
#import "org_xmlvm_iphone_UITabBarController.h"
#import "org_xmlvm_iphone_UIViewController.h"

	
@interface org_xmlvm_iphone_UITabBarControllerDelegate : java_lang_Object <UITabBarControllerDelegate>

- (void) __init_org_xmlvm_iphone_UITabBarControllerDelegate__;
- (int) shouldSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UITabBarController*)n1 :(org_xmlvm_iphone_UIViewController*)n2;
- (void) didSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UITabBarController*)n1 :(org_xmlvm_iphone_UIViewController*)n2;
- (void) willBeginCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList :(org_xmlvm_iphone_UITabBarController*)n1 :(java_util_ArrayList*)n2;
- (void) willEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean :(org_xmlvm_iphone_UITabBarController*)n1 :(java_util_ArrayList*)n2 :(int)n3;
- (void) didEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean :(org_xmlvm_iphone_UITabBarController*)n1 :(java_util_ArrayList*)n2 :(int)n3;

@end

