
/** @author teras */

#import "org_xmlvm_iphone_UIToolbar.h"


@implementation UIToolbar (cat_org_xmlvm_iphone_UIToolbar)

- (void) __init_org_xmlvm_iphone_UIToolbar__ {
	//[self init];
}

- (void) __init_org_xmlvm_iphone_UIToolbar___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1 {
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

- (java_util_ArrayList*) getItems__ {
	return [self.items retain];
}

- (void) setItems___java_util_ArrayList :(java_util_ArrayList*)itms {
	self.items = itms;
}

- (void) setItems___java_util_ArrayList_boolean :(java_util_ArrayList*)itms :(int)anim {
	[self setItems:itms animated:anim];
}


@end
