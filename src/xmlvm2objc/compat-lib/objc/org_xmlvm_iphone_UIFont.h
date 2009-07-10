#import "xmlvm.h"

// UIFont
//----------------------------------------------------------------------------
typedef UIFont org_xmlvm_iphone_UIFont;
@interface UIFont (cat_org_xmlvm_iphone_UIFont)
- (void) __init_org_xmlvm_iphone_UIFont;
- (UIFont *) fontWithSize___float:(float)fontSize;
@end