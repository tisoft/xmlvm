#import "org_xmlvm_iphone_UIControl.h"

// UIControl
//----------------------------------------------------------------------------
@implementation UIControl (cat_org_xmlvm_iphone_UIControl)

- (void) __init_org_xmlvm_iphone_UIControl
{
}

- (void) __init_org_xmlvm_iphone_UIControl___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) rect
{
	[self initWithFrame: [rect getCGRect]];
}

- (void) addTarget___org_xmlvm_iphone_UIControlDelegate_int
                   :(org_xmlvm_iphone_UIControlDelegate*) delegate
                   :(int) controlEvents
{
	// TODO better memory management
	[delegate retain];
	[self addTarget:delegate action:@selector(raiseEvent) forControlEvents:controlEvents];
}

@end
