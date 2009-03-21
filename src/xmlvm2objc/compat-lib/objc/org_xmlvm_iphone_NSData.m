
#import "org_xmlvm_iphone_NSData.h"



// NSData
//----------------------------------------------------------------------------
@implementation NSData (cat_NSData)
- (java_lang_String*) toString
{
    return [[NSMutableString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}
@end

