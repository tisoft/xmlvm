#import "xmlvm.h"
#import "org_xmlvm_iphone_CGPoint.h"
#import "org_xmlvm_iphone_UIView.h"


// UITouch
//----------------------------------------------------------------------------
typedef UITouch org_xmlvm_iphone_UITouch;
@interface UITouch (cat_org_xmlvm_iphone_UITouch)

- (org_xmlvm_iphone_UIView*) getView;
- (org_xmlvm_iphone_CGPoint*) locationInView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*) view;

@end