#import "xmlvm.h"
#import "org_xmlvm_iphone_UIControlDelegate.h"
#import "org_xmlvm_iphone_CGRect.h"


// UIControl
//----------------------------------------------------------------------------
@interface UIControl (cat_org_xmlvm_iphone_UIControl)
- (void) __init_org_xmlvm_iphone_UIControl;
- (void) __init_org_xmlvm_iphone_UIControl___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) rect;
- (void) addTarget___org_xmlvm_iphone_UIControlDelegate_int
                   :(org_xmlvm_iphone_UIControlDelegate*) delegate
                   :(int) controlEvents;
@end
