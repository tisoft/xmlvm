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

+ (NSMutableString*) valueOf___double: (double) d
{
    NSNumber* n = [NSNumber numberWithDouble: d];
    return [NSMutableString stringWithString: [n stringValue]];
}

+ (NSMutableString*) valueOf___java_lang_Object: (java_lang_Object*) o
{
    if ([o isKindOfClass: [NSMutableString class]] == YES) {
        return [NSMutableString stringWithString: (NSMutableString*) o];
    }
    return [NSMutableString stringWithString: @"Unkown type in valueOf___java_lang_Object"];
}

- (unichar) charAt___int: (int) idx
{
	return [self characterAtIndex: idx];
}

- (int) endsWith___java_lang_String: (java_lang_String*) s
{
	return [self hasSuffix: s] == YES ? 1 : 0;
}



- (NSMutableString*) append___java_lang_String: (java_lang_String*) str
{
    [self appendString: str];
    return self;
}

- (NSMutableString*) append___int: (int) i
{
	NSNumber* n = [NSNumber numberWithInt: i];
	[self appendString: [n stringValue]];
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