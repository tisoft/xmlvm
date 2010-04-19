
/** @author teras */

#import "org_xmlvm_iphone_UINavigationItem.h"


@implementation UINavigationItem (cat_org_xmlvm_iphone_UINavigationItem)

- (void) __init_org_xmlvm_iphone_UINavigationItem___java_lang_String :(java_lang_String*)n1 { 
	[self initWithTitle:n1];
}


- (org_xmlvm_iphone_UIBarButtonItem*) getBackBarButtonItem__ { 
	org_xmlvm_iphone_UIBarButtonItem* button = self.backBarButtonItem;
	return button == nil ? JAVA_NULL : [button retain];
}

- (void) setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem :(org_xmlvm_iphone_UIBarButtonItem*)n1 { 
	self.backBarButtonItem = n1;
}

- (int) hidesBackButton__ { 
	return self.hidesBackButton;
}

- (void) setHidesBackButton___boolean :(int)n1 { 
	self.hidesBackButton = n1;
}

- (void) setHidesBackButton___boolean_boolean :(int)but :(int)anim { 
	[self setHidesBackButton:but animated:anim];
}

- (org_xmlvm_iphone_UIBarButtonItem*) getLeftBarButtonItem__ { 
	org_xmlvm_iphone_UIBarButtonItem* button = self.leftBarButtonItem;
	return button == nil ? JAVA_NULL : [button retain];
}

- (void) setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem :(org_xmlvm_iphone_UIBarButtonItem*)n1 { 
	self.leftBarButtonItem = n1;
}

- (void) setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean :(org_xmlvm_iphone_UIBarButtonItem*)but :(int)anim { 
	[self setLeftBarButtonItem:but animated:anim];
}

- (java_lang_String*) getPrompt__ { 
	return [self.prompt retain];
}

- (void) setPrompt___java_lang_String :(java_lang_String*)n1 { 
    self.prompt = n1;
}

- (org_xmlvm_iphone_UIBarButtonItem*) getRightBarButtonItem__ { 
	org_xmlvm_iphone_UIBarButtonItem * button = self.rightBarButtonItem;
	return button == nil ? JAVA_NULL : [button retain];
}

- (void) setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem :(org_xmlvm_iphone_UIBarButtonItem*)n1 { 
	self.rightBarButtonItem = n1;
}

- (void) setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean :(org_xmlvm_iphone_UIBarButtonItem*)but :(int)anim { 
	[self setRightBarButtonItem:but animated:anim];
}

- (java_lang_String*) getTitle__ { 
	return [self.title retain];
}

- (void) setTitle___java_lang_String :(java_lang_String*)n1 { 
	self.title = n1;
}

- (org_xmlvm_iphone_UIView*) getTitleView__ { 
	return [self.titleView retain];
}

- (void) setTitleView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1 { 
	self.titleView = n1;
}



@end

