#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_UIView.h"


// UITableViewCell
//----------------------------------------------------------------------------
typedef UITableViewCell org_xmlvm_iphone_UITableViewCell;
@interface UITableViewCell (cat_org_xmlvm_iphone_UITableViewCell)

- (void) __init_org_xmlvm_iphone_UITableViewCell;
- (void) __init_org_xmlvm_iphone_UITableViewCell___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect;
- (org_xmlvm_iphone_UIView*) getContentView;

@end