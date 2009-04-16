#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_UIImage.h"

// UIImageView
//----------------------------------------------------------------------------
typedef UIImageView org_xmlvm_iphone_UIImageView;
@interface UIImageView (cat_org_xmlvm_iphone_UIImageView)
//- (id) init;
- (void) __init_org_xmlvm_iphone_UIImageView___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect;
- (void) setImage___org_xmlvm_iphone_UIImage: (org_xmlvm_iphone_UIImage*) image;
- (org_xmlvm_iphone_UIImage*) getImage;
- (void) setFrame___org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_CGRect*)n1;
- (void) setNeedsDisplayInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect;
@end