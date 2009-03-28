#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_UITableViewDataSource.h"
#import "org_xmlvm_iphone_UITableViewDelegate.h"


// UITableView
//----------------------------------------------------------------------------
typedef UITableView org_xmlvm_iphone_UITableView;
@interface UITableView (cat_org_xmlvm_iphone_UITableView)
- (void) __init_org_xmlvm_iphone_UITableView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) rect;
- (void) __init_org_xmlvm_iphone_UITableView___org_xmlvm_iphone_CGRect_int :(org_xmlvm_iphone_CGRect*) rect :(int) style;
- (void) setDataSource___org_xmlvm_iphone_UITableViewDataSource :(org_xmlvm_iphone_UITableViewDataSource*) source;
- (void) setDelegate___org_xmlvm_iphone_UITableViewDelegate :(org_xmlvm_iphone_UITableViewDelegate*) delegate;
@end