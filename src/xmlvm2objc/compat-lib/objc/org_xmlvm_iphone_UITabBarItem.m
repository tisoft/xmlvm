
/** @author teras */

#import "org_xmlvm_iphone_UITabBarItem.h"


@implementation UITabBarItem (cat_org_xmlvm_iphone_UITabBarItem)

- (void) __init_org_xmlvm_iphone_UITabBarItem__ {
	//[self init];
}

- (int) isEnabled__ {
	return self.enabled;
}

- (void) setEnabled___boolean :(int)en {
	self.enabled = en;
}

- (org_xmlvm_iphone_UIImage*) getImage__ {
	return [self.image retain];
}

- (void) setImage___org_xmlvm_iphone_UIImage :(org_xmlvm_iphone_UIImage*)img {
	self.image = img;
}

- (org_xmlvm_iphone_UIEdgeInsets*) getImageInsets__ {
	org_xmlvm_iphone_UIEdgeInsets * ins = [[org_xmlvm_iphone_UIEdgeInsets alloc] init];
	UIEdgeInsets data = self.imageInsets;
	ins->top = data.top;
	ins->left = data.left;
	ins->bottom = data.bottom;
	ins->right = data.right;
	return ins;	
}

- (void) setImageInsets___org_xmlvm_iphone_UIEdgeInsets :(org_xmlvm_iphone_UIEdgeInsets*)ins {
	self.imageInsets = [ins getUIEdgeInsets];
}

- (java_lang_String*) getTitle__ {
	return [self.title retain];
}

- (void) setTitle___java_lang_String :(java_lang_String*)tit {
	self.title = tit;
}

- (int) getTag__ {
	return self.tag;
}

- (void) setTag___int :(int)tg {
	self.tag = tg;
}

@end

