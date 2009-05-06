#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"

// UIButton
//----------------------------------------------------------------------------
typedef UIButton org_xmlvm_iphone_UIButton;
@interface UIButton (cat_org_xmlvm_iphone_UIButton)
+ (org_xmlvm_iphone_UIButton*) buttonWithType___int :(int) buttonType;
- (void) setTitle___java_lang_String_int :(NSString*) label :(int) state;
@end