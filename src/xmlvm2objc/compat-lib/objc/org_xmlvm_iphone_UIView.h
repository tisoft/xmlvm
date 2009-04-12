#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGAffineTransform.h"


// UIView
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UIView : UIView
- (void) drawRect:(CGRect)rect;
@end

@interface UIView (cat_org_xmlvm_iphone_UIView)
- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (org_xmlvm_iphone_CGRect*) getBounds;
- (void) setFrame___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) frame;
- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
- (void) setTransform___org_xmlvm_iphone_CGAffineTransform :(org_xmlvm_iphone_CGAffineTransform*)transform;
- (void) setNeedsDisplayInRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
- (void) drawRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
@end
