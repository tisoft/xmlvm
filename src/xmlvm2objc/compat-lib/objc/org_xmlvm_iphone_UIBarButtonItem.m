
/** @author teras */

#import "org_xmlvm_iphone_UIBarButtonItem.h"


@implementation  UIBarButtonItem (cat_org_xmlvm_iphone_UIBarButtonItem)

- (void) __init_org_xmlvm_iphone_UIBarButtonItem___int_java_lang_Object_java_lang_String :(int)n1 :(java_lang_Object*)n2 :(java_lang_String*)n3 {
	// TODO teras: not implemented
}

- (void) __init_org_xmlvm_iphone_UIBarButtonItem___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1 {
	// TODO teras: not implemented
}

- (void) __init_org_xmlvm_iphone_UIBarButtonItem___org_xmlvm_iphone_UIImage_int_java_lang_Object_java_lang_String :(org_xmlvm_iphone_UIImage*)n1 :(int)n2 :(java_lang_Object*)n3 :(java_lang_String*)n4 {
	// TODO teras: not implemented
}

- (void) __init_org_xmlvm_iphone_UIBarButtonItem___java_lang_String_int_org_xmlvm_iphone_UIBarButtonItemDelegate :(java_lang_String*)title :(int)style :(org_xmlvm_iphone_UIBarButtonItemDelegate*)bbdelegate {
	if (bbdelegate == JAVA_NULL) {
		[self initWithTitle:title style:style target:nil action:nil];
	} else {
		[bbdelegate retain];
		[self initWithTitle:title style:style target:bbdelegate action:@selector(clicked__)];
	}
}

- (void) setTitle___java_lang_String :(java_lang_String*)n1 {
	self.title = n1;
}

- (org_xmlvm_iphone_UIView*) getCustomView__ {
	return [self.customView retain];
}

- (void) setCustomView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1 { 
	self.customView = n1;
}

- (java_util_Set*) getPossibleTitles__ { 
	return [self.possibleTitles retain];
}

- (void) setPossibleTitles___java_util_Set :(java_util_Set*)n1 { 
	self.possibleTitles = n1;
}

- (int) getStyle__ { 
	return self.style;
}

- (void) setStyle___int :(int)n1 { 
	self.style = n1;
}

- (java_lang_Object*) getTarget__ { 
	return [self.target retain];
}

- (void) setTarget___java_lang_Object :(java_lang_Object*)n1 { 
	self.target = n1;
}

- (float) getWidth__ { 
	return self.width;
}

- (void) setWidth___float :(float)n1 { 
	self.width = n1;
}



@end

