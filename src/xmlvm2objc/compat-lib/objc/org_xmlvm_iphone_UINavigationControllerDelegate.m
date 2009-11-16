
/** @author teras */

#import "org_xmlvm_iphone_UINavigationControllerDelegate.h"

@implementation  org_xmlvm_iphone_UINavigationControllerDelegate

- (void) willShowViewController___org_xmlvm_iphone_UINavigationController_org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UINavigationController*)nav :(org_xmlvm_iphone_UIViewController*)viewc :(int)anim {
	[self navigationController:nav willShowViewController:viewc animated:anim];
}

- (void) didShowViewController___org_xmlvm_iphone_UINavigationController_org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UINavigationController*)nav :(org_xmlvm_iphone_UIViewController*)viewc :(int)anim {
	[self navigationController:nav didShowViewController:viewc animated:anim];
}

@end
