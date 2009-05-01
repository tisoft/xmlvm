#import "org_xmlvm_iphone_UIWindow.h"


// UIWindow
//----------------------------------------------------------------------------
@implementation UIWindow (cat_org_xmlvm_iphone_UIWindow);

- (void) __init_org_xmlvm_iphone_UIWindow___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];
	// We retain this instance to prevent it from begin garbage collected
	// when the UIWindow is not stored in an instance member
	[self retain];
}

- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)view
{
    [self addSubview: view];
}

@end
