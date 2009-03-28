#import "xmlvm.h"
#import "org_xmlvm_iphone_UITextField.h"


// UITextField
//----------------------------------------------------------------------------
@implementation UITextField (cat_org_xmlvm_iphone_UITextField);

- (void) __init_org_xmlvm_iphone_UITextField___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];
}


- (void) setText___java_lang_String :(NSString*)n1
{
    [self setText: n1];
}

- (NSString*) getText
{
    return [self text];
}

- (void) setTextColor___org_xmlvm_iphone_UIColor: (org_xmlvm_iphone_UIColor*) color
{
	[self setTextColor: color];
}

- (void) setBorderStyle___int :(int) style
{
	UITextBorderStyle s;
	switch (style) {
		case 0:
			s = UITextBorderStyleNone;
			break;
		case 1:
			s = UITextBorderStyleLine;
			break;
		case 2:
			s = UITextBorderStyleBezel;
			break;
		case 3:
			s = UITextBorderStyleRoundedRect;
			break;
	}
	self.borderStyle = s;
}
		
@end
