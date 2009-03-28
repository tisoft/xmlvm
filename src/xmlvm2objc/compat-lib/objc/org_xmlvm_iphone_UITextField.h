#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_UIColor.h"

// UITextField
//----------------------------------------------------------------------------
typedef UITextField org_xmlvm_iphone_UITextField;
@interface UITextField (cat_org_xmlvm_iphone_UITextField)
- (void) __init_org_xmlvm_iphone_UITextField___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) setText___java_lang_String :(NSString*)n1;
- (NSString*) getText;
- (void) setTextColor___org_xmlvm_iphone_UIColor: (org_xmlvm_iphone_UIColor*) color;
- (void) setBorderStyle___int :(int) style;
@end