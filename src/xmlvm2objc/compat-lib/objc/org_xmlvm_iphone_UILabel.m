#import "org_xmlvm_iphone_UILabel.h"


// UILabel
//----------------------------------------------------------------------------
@implementation UILabel (cat_org_xmlvm_iphone_UILabel);

- (void) __init_org_xmlvm_iphone_UILabel___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];
}


- (void) setText___java_lang_String :(NSString*)n1
{
    [self setText: n1];
}


- (void) setCentersHorizontally___boolean :(int)n1
{
    [self setCentersHorizontally: (n1 ? true : false)];
}
@end
