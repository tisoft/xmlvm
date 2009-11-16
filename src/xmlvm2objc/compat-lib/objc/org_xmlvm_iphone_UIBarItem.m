
/** @author teras */

#import "org_xmlvm_iphone_UIBarItem.h"


@implementation UIBarItem (cat_org_xmlvm_iphone_UIBarItem)


- (void) __init_org_xmlvm_iphone_UIBarItem__
{
	[self init];
}




- (int) isEnabled__
{
	return self.enabled;
}


- (void) setEnabled___boolean :(int)n1
{
	self.enabled = n1;
}


- (org_xmlvm_iphone_UIImage*) getImage__
{
	return [self.image retain];
}


- (void) setImage___org_xmlvm_iphone_UIImage :(org_xmlvm_iphone_UIImage*)n1
{
	self.image = n1;
}


- (org_xmlvm_iphone_UIEdgeInsets*) getImageInsets__
{
	org_xmlvm_iphone_UIEdgeInsets * ins = [[org_xmlvm_iphone_UIEdgeInsets alloc] init];
	UIEdgeInsets data = self.imageInsets;
	ins->top = data.top;
	ins->left = data.left;
	ins->bottom = data.bottom;
	ins->right = data.right;
	return ins;
}


- (void) setImageInsets___org_xmlvm_iphone_UIEdgeInsets :(org_xmlvm_iphone_UIEdgeInsets*)ins
{
	self.imageInsets = UIEdgeInsetsMake(ins->top, ins->left, ins->bottom, ins->right);
}


- (java_lang_String*) getTitle__
{
	return [self.title retain];
}


- (void) setTitle___java_lang_String :(java_lang_String*)n1
{
	self.title = n1;
}


- (int) getTag__
{
	return self.tag;
}


- (void) setTag___int :(int)n1
{
	self.tag = n1;
}



@end

