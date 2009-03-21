#import "java_lang_String.h"


// java.lang.String
//----------------------------------------------------------------------------
@implementation NSMutableString (cat_java_lang_String)

- (void) __init_java_lang_String___java_lang_String: (java_lang_String*) str
{
    [self setString: str];
}

- (void) __init_java_lang_StringBuilder
{
    [self setString: @""];
}

- (void) __init_java_lang_StringBuilder___java_lang_String: (java_lang_String*) str
{
    [self setString: str];
}

+ (NSMutableString*) valueOf___int: (int) i
{
    NSNumber* n = [NSNumber numberWithInt: i];
    return [NSMutableString stringWithString: [n stringValue]];
}

+ (NSMutableString*) valueOf___float: (float) f
{
    NSNumber* n = [NSNumber numberWithFloat: f];
    return [NSMutableString stringWithString: [n stringValue]];
}

+ (NSMutableString*) valueOf___java_lang_Object: (java_lang_Object*) o
{
    if ([o isKindOfClass: [NSMutableString class]] == YES) {
        return [NSMutableString stringWithString: (NSMutableString*) o];
    }
    return [NSMutableString stringWithString: @"Unkown type in valueOf___java_lang_Object"];
}

- (NSMutableString*) append___java_lang_String: (java_lang_String*) str
{
    [self appendString: str];
    return self;
}

- (int) equals___java_lang_Object: (java_lang_Object*) o
{
    if ([o isKindOfClass: [NSMutableString class]] == NO) {
        return 0;
    }
    return [self compare: (NSString*) o] == 0;
}

- (NSMutableString*) toString
{
    return self;
}
@end