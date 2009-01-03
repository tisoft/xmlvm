#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"

// UITextLabel
//----------------------------------------------------------------------------
typedef UILabel org_xmlvm_iphone_UITextLabel;
@interface UILabel (cat_org_xmlvm_iphone_UITextLabel)
- (void) __init_org_xmlvm_iphone_UITextLabel___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) setText___java_lang_String :(NSString*)n1;
- (void) setCentersHorizontally___boolean :(int)n1;
@end