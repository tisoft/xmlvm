#import "org_xmlvm_iphone_UIWindow.h"


// UIWindow
//----------------------------------------------------------------------------
@implementation UIWindow (cat_org_xmlvm_iphone_UIWindow);

- (void) __init_org_xmlvm_iphone_UIWindow___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithContentRect: [n1 getCGRect]];
}


- (void) orderFront___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*)n1
{
    [self orderFront: n1];
}


- (void) makeKey___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*)n1
{
    [self makeKeyWindow];
}


- (void) _setHidden___boolean :(int)n1
{
    [self setHidden: (n1 ? true : false)];
}


- (void) setContentView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1
{
	
	
    [self setContentView: n1];
}
@end
