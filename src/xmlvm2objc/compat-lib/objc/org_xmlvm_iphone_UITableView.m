#import "org_xmlvm_iphone_UITableView.h"

// UITableView
//----------------------------------------------------------------------------
@implementation UITableView (cat_org_xmlvm_iphone_UITableView)

- (void) __init_org_xmlvm_iphone_UITableView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) rect
{
	[self initWithFrame: [rect getCGRect] style: UITableViewStyleGrouped];
}

- (void) __init_org_xmlvm_iphone_UITableView___org_xmlvm_iphone_CGRect_int :(org_xmlvm_iphone_CGRect*) rect :(int) style
{
	[self initWithFrame: [rect getCGRect] style: ((style == 0) ? UITableViewStylePlain : UITableViewStyleGrouped)];
}

- (void) setDataSource___org_xmlvm_iphone_UITableViewDataSource :(org_xmlvm_iphone_UITableViewDataSource*) source
{
	[self setDataSource: source];
}

@end