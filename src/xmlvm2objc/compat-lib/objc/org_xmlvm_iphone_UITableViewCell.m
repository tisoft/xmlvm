#import "org_xmlvm_iphone_UITableViewCell.h"


// UITableViewCell
//----------------------------------------------------------------------------
@implementation UITableViewCell (cat_org_xmlvm_iphone_UITableViewCell)

- (void) __init_org_xmlvm_iphone_UITableViewCell
{
	[self initWithFrame: CGRectZero reuseIdentifier: nil];
}

- (void) __init_org_xmlvm_iphone_UITableViewCell___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect
{
	[self initWithFrame: [rect getCGRect] reuseIdentifier: nil];
}

- (org_xmlvm_iphone_UIView*) getContentView
{
	org_xmlvm_iphone_UIView* view = [self contentView];
	[view retain];
	return view;
}

@end