
#import "org_xmlvm_iphone_NSURL.h"

// NSURL
//----------------------------------------------------------------------------
@implementation NSURL (cat_NSURL)
- (void) __init_org_xmlvm_iphone_NSURL___java_lang_String: (java_lang_String*) url
{
    [self initWithString: url];
}

+ (NSURL*) URLWithString___java_lang_String: (java_lang_String*) url
{
    return [NSURL URLWithString: url];
}
@end

