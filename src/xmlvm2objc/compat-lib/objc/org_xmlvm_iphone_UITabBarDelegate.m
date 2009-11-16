
/** @author teras */

#import "org_xmlvm_iphone_UITabBarDelegate.h"


@implementation org_xmlvm_iphone_UITabBarDelegate


- (void) __init_org_xmlvm_iphone_UITabBarDelegate__ {
	//[self init];
}

- (void) willBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList :(org_xmlvm_iphone_UITabBar*)bar :(java_util_ArrayList*)list {
	[self tabBar:bar willBeginCustomizingItems:list];
}

- (void) didBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList :(org_xmlvm_iphone_UITabBar*)bar :(java_util_ArrayList*)list {
	[self tabBar:bar didBeginCustomizingItems:list];
}

- (void) willEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean :(org_xmlvm_iphone_UITabBar*)bar :(java_util_ArrayList*)list :(int)changed{
	[self tabBar:bar willEndCustomizingItems:list changed:changed];
}

- (void) didEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_ArrayList_boolean :(org_xmlvm_iphone_UITabBar*)bar :(java_util_ArrayList*)list :(int)changed {
	[self tabBar:bar didEndCustomizingItems:list changed:changed];
}

- (void) didSelectItem___org_xmlvm_iphone_UITabBar_org_xmlvm_iphone_UITabBarItem :(org_xmlvm_iphone_UITabBar*)bar :(org_xmlvm_iphone_UITabBarItem*)item {
	[self tabBar:bar didSelectItem:item];
}


@end

