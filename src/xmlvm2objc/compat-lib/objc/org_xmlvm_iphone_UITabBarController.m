
/** @author teras */

#import "org_xmlvm_iphone_UITabBarController.h"
#import "org_xmlvm_iphone_UITabBarControllerDelegate.h"


@implementation UITabBarController (cat_org_xmlvm_iphone_UITabBarController)

- (void) __init_org_xmlvm_iphone_UITabBarController__ {
	[self init];
}

- (java_util_ArrayList*) getCustomizableViewControllers__ {
	return [self.customizableViewControllers retain];
}

- (void) setCustomizableViewControllers___java_util_ArrayList :(java_util_ArrayList*)n1 {
	self.customizableViewControllers = n1;
}

- (org_xmlvm_iphone_UITabBarControllerDelegate*) getDelegate__ {
	return [self.delegate retain];
}

- (void) setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate :(org_xmlvm_iphone_UITabBarControllerDelegate*)n1 {
	self.delegate = n1;
}

- (org_xmlvm_iphone_UINavigationController*) getMoreNavigationController__ {
	return [self.moreNavigationController retain];
}

- (org_xmlvm_iphone_UIViewController*) getSelectedViewController__ {
	return [self.selectedViewController retain];
}

- (void) setSelectedViewController___org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UIViewController*)n1 {
	self.selectedViewController = n1;
}

- (int) getSelectedIndex__ {
	return self.selectedIndex;
}

- (void) setSelectedIndex___int :(int)n1 {
	self.selectedIndex = n1;
}

- (org_xmlvm_iphone_UITabBar*) getTabBar__ {
	return [self.tabBar retain];
}

- (java_util_ArrayList*) getViewControllers__ {
	return [self.viewControllers retain];
}

- (void) setViewControllers___java_util_ArrayList :(java_util_ArrayList*)n1 {
	self.viewControllers = n1;
}

- (void) setViewControllers___java_util_ArrayList_boolean :(java_util_ArrayList*)n1 :(int)n2 {
	[self setViewControllers:n1 animated:n2];
}



@end

