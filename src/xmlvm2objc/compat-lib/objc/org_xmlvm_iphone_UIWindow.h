#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_UIApplication.h"
#import "org_xmlvm_iphone_UIView.h"

// UIWindow
//----------------------------------------------------------------------------
typedef UIWindow org_xmlvm_iphone_UIWindow;
@interface UIWindow (cat_org_xmlvm_iphone_UIWindow)
- (void) __init_org_xmlvm_iphone_UIWindow___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) orderFront___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*)n1;
- (void) makeKey___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*)n1;
- (void) _setHidden___boolean :(int)n1;
- (void) setContentView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
@end
