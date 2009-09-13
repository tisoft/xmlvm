#import "org_xmlvm_iphone_UIButton.h"


// UIButton
//----------------------------------------------------------------------------
@implementation UIButton (cat_org_xmlvm_iphone_UIButton);

+ (org_xmlvm_iphone_UIButton*) buttonWithType___int :(int) buttonType
{
	return [[UIButton buttonWithType: buttonType] retain];
}

- (void) setTitle___java_lang_String_int :(NSString*) label :(int) state
{
    [self setTitle: label forState: state];
}

@end
