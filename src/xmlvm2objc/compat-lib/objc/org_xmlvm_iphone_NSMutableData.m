#import "org_xmlvm_iphone_NSMutableData.h"

// NSMutableData 
//----------------------------------------------------------------------------
@implementation NSMutableData (cat_org_xmlvm_iphone_NSMutableData)
- (void) __init_org_xmlvm_iphone_NSMutableData
{
}

- (int) getByte___int: (int) index
{
    return (int) ((unsigned char *) [self bytes])[index];
}

- (void) appendByte___int: (int) value
{
    char c[1];
    c[0] = (char) value;
    [self appendBytes: c length: 1];
}

- (int) byteCount
{
    return [self length];
}

- (java_lang_String*) toString
{
    return [[NSMutableString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}
@end

