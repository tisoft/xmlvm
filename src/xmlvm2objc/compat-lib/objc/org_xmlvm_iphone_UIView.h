#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"

// UIView
//----------------------------------------------------------------------------
//typedef UIView org_xmlvm_iphone_UIView;
@interface org_xmlvm_iphone_UIView : UIView
- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
- (void) setNeedsDisplayInRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
- (void) drawRect:(CGRect)rect;
- (void) drawRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
@end
