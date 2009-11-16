
/** @author teras */

#import "org_xmlvm_iphone_UITabBarControllerDelegate.h"


@implementation org_xmlvm_iphone_UITabBarControllerDelegate


- (void) __init_org_xmlvm_iphone_UITabBarControllerDelegate__ {
	//[self init];
}

- (int) shouldSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UITabBarController*)tbc :(org_xmlvm_iphone_UIViewController*)vc {
	return [self tabBarController:tbc shouldSelectViewController:vc];
}

- (void) didSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UITabBarController*)tbc :(org_xmlvm_iphone_UIViewController*)vc {
	[self tabBarController:tbc didSelectViewController:vc];
}

- (void) willBeginCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList :(org_xmlvm_iphone_UITabBarController*)tbc :(java_util_ArrayList*)list {
	[self tabBarController:tbc willBeginCustomizingViewControllers:list];
}

- (void) willEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean :(org_xmlvm_iphone_UITabBarController*)tbc :(java_util_ArrayList*)list :(int)ch {
	[self tabBarController:tbc willEndCustomizingViewControllers:list changed:ch];
}

- (void) didEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_ArrayList_boolean :(org_xmlvm_iphone_UITabBarController*)tbc :(java_util_ArrayList*)list :(int)ch {
	[self tabBarController:tbc didEndCustomizingViewControllers:list changed:ch];
}



@end

