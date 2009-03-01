#import "org_xmlvm_iphone_UIWindow.h"


// UIWindow
//----------------------------------------------------------------------------
@implementation UIWindow (cat_org_xmlvm_iphone_UIWindow);

- (void) __init_org_xmlvm_iphone_UIWindow___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];
}

- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)view
{
    [self addSubview: view];
}

@end
