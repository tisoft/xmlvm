#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"

// UITextLabel
//----------------------------------------------------------------------------
typedef UILabel org_xmlvm_iphone_UILabel;
@interface UILabel (cat_org_xmlvm_iphone_UILabel)
- (void) __init_org_xmlvm_iphone_UILabel___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) setText___java_lang_String :(NSString*)n1;
- (void) setCentersHorizontally___boolean :(int)n1;
@end