#import "org_xmlvm_iphone_UILabel.h"


// UILabel
//----------------------------------------------------------------------------
@implementation UILabel (cat_org_xmlvm_iphone_UILabel);

- (void) __init_org_xmlvm_iphone_UILabel
{
	[self initWithFrame: CGRectZero];
}

- (void) __init_org_xmlvm_iphone_UILabel___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];
}


- (void) setText___java_lang_String :(NSString*)n1
{
    [self setText: n1];
}


- (void) setTextAlignment___int :(int) alignment
{
	UITextAlignment a;
	switch (alignment) {
	case 0:
		a = UITextAlignmentLeft;
		break;
	case 1:
		a = UITextAlignmentCenter;
		break;
	case 2:
		a = UITextAlignmentRight;
		break;
	}
    self.textAlignment = a;
}
@end
