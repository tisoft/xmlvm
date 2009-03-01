#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_UIView.h"
#import "org_xmlvm_iphone_UIApplication.h"

// UIWindow
//----------------------------------------------------------------------------
typedef UIWindow org_xmlvm_iphone_UIWindow;
@interface UIWindow (cat_org_xmlvm_iphone_UIWindow)
- (void) __init_org_xmlvm_iphone_UIWindow___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)view;
@end
