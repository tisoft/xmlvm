
#import "org_xmlvm_iphone_NSData.h"



// NSData
//----------------------------------------------------------------------------
@implementation NSData (cat_org_xmlvm_iphone_NSData)

+ (NSData*) dataWithContentsOfFile___java_lang_String: (java_lang_String*) path
{
	return [NSData dataWithContentsOfFile: path];
}

- (int) getByte___int: (int) index;
{
    return (int) ((unsigned char *) [self bytes])[index];
}

- (java_lang_String*) toString
{
    return [[NSMutableString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}
@end

