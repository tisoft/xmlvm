
/** @author teras */

#import "org_xmlvm_iphone_UINavigationBar.h"
#import "org_xmlvm_iphone_UINavigationBarDelegate.h"
#import "org_xmlvm_iphone_UINavigationItem.h"


@implementation UINavigationBar (cat_org_xmlvm_iphone_UINavigationBar)

- (void) __init_org_xmlvm_iphone_UINavigationBar__ { 
	[self init];
}

- (void) __init_org_xmlvm_iphone_UINavigationBar___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1 { 
	[self initWithFrame:[n1 getCGRect]];
}

- (int) getBarStyle__ {
	return self.barStyle;
}

- (void) setBarStyle___int :(int)n1 {
	self.barStyle = n1;
}

- (org_xmlvm_iphone_UIColor*) getTintColor__ {
	return [self.tintColor retain];
}

- (void) setTintColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*)n1 {
	self.tintColor = n1;
}

- (int) isTranslucent__ {
	return self.translucent;
}

- (void) setTranslucent___boolean :(int)n1 {
	self.translucent = n1;
}

- (void) pushNavigationItem___org_xmlvm_iphone_UINavigationItem_boolean :(org_xmlvm_iphone_UINavigationItem*)item :(int)anim { 
	[self pushNavigationItem:item animated:anim];
}

- (org_xmlvm_iphone_UINavigationItem*) popNavigationItemAnimated___boolean :(int)anim { 
	return [self popNavigationItemAnimated:anim];
}

- (void) setItems___java_util_ArrayList :(java_util_ArrayList*)n1 { 
	[self setItems:n1];
}

- (void) setItems___java_util_ArrayList_boolean :(java_util_ArrayList*)items :(int)anim { 
	[self setItems:items animated:anim];
}

- (org_xmlvm_iphone_UINavigationBarDelegate*) getNavigationBarDelegate__ { 
	return [self.delegate retain];
}

- (void) setDelegate___org_xmlvm_iphone_UINavigationBarDelegate :(org_xmlvm_iphone_UINavigationBarDelegate*)n1 { 
	self.delegate = n1;
}

- (org_xmlvm_iphone_UINavigationItem*) getTopItem__ { 
	return self.topItem;
}

- (org_xmlvm_iphone_UINavigationItem*) getBackitem__ { 
	return self.backItem;
}

- (java_util_ArrayList*) getItems__ { 
	// TODO teras: why there is an error here?
	return self.items;
}


@end

