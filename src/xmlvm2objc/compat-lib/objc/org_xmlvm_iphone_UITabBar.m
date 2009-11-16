
/** @author teras */

#import "org_xmlvm_iphone_UITabBar.h"
#import "org_xmlvm_iphone_UITabBarDelegate.h"


@implementation UITabBar (cat_org_xmlvm_iphone_UITabBar)


- (void) __init_org_xmlvm_iphone_UITabBar__ {
	[self init];
}

- (void) __init_org_xmlvm_iphone_UITabBar___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)fr {
	[self initWithFrame:[fr getCGRect]];
}

- (org_xmlvm_iphone_UITabBarDelegate*) getTabBarDelegate__ {
	return [self.delegate retain];
}

- (void) setDelegate___org_xmlvm_iphone_UITabBarDelegate :(org_xmlvm_iphone_UITabBarDelegate*)n1 {
	self.delegate = n1;
}

- (java_util_ArrayList*) getItems__ {
	return [self.items retain];
}

- (void) setItems___java_util_ArrayList :(java_util_ArrayList*)n1 {
	self.items = n1;
}

- (void) setItems___java_util_ArrayList_boolean :(java_util_ArrayList*)list :(int)anim {
	[self setItems:list animated:anim];
}

- (org_xmlvm_iphone_UITabBarItem*) getSelectedItem__ {
	return [self.selectedItem retain];
}

- (void) setSelectedItem___org_xmlvm_iphone_UITabBarItem :(org_xmlvm_iphone_UITabBarItem*)item {
	self.selectedItem = item;
}

- (void) beginCustomizingItems___java_util_ArrayList :(java_util_ArrayList*)list {
	[self beginCustomizingItems:list];
	
}

- (int) endCustomizingAnimated___boolean :(int)anim {
	return [self endCustomizingAnimated:anim];
}

- (int) isCustomizing__ {
	return [self isCustomizing];
}




@end

