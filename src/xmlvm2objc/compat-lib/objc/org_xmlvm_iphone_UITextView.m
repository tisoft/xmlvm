#import "xmlvm.h"
#import "org_xmlvm_iphone_UITextView.h"


// UITextView
//----------------------------------------------------------------------------
@implementation UITextView (cat_org_xmlvm_iphone_UITextView);

- (void) __init_org_xmlvm_iphone_UITextView
{
	[self initWithFrame: CGRectZero];
}

- (void) __init_org_xmlvm_iphone_UITextView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];
}


- (void) setText___java_lang_String :(NSString*)n1
{
    [self setText: n1];
}

- (NSString*) getText
{
	NSString* txt = [self text];
	[txt retain];
    return txt;
}

- (void) setTextColor___org_xmlvm_iphone_UIColor: (org_xmlvm_iphone_UIColor*) color
{
	[self setTextColor: color];
}

@end
