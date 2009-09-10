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
    return [[NSMutableString alloc] initWithString: [n stringValue]];
}

+ (NSMutableString*) valueOf___float: (float) f
{
    NSNumber* n = [NSNumber numberWithFloat: f];
    return [[NSMutableString alloc] initWithString: [n stringValue]];
}

+ (NSMutableString*) valueOf___double: (double) d
{
    NSNumber* n = [NSNumber numberWithDouble: d];
    return [[NSMutableString alloc] initWithString: [n stringValue]];
}

+ (NSMutableString*) valueOf___java_lang_Object: (java_lang_Object*) o
{
    if ([o isKindOfClass: [NSMutableString class]] == YES) {
        return [[NSMutableString alloc] initWithString: (NSMutableString*) o];
    }
    return [[NSMutableString alloc] initWithString: @"Unkown type in valueOf___java_lang_Object"];
}

- (unichar) charAt___int: (int) idx
{
	return [self characterAtIndex: idx];
}

- (int) lastIndexOf___int: (int) ch
{
	int i;
	for (i = [self length] - 1; i >= 0; i--) {
		if ([self characterAtIndex: i] == ch)
			break;
	}
	return i;
}

- (int) endsWith___java_lang_String: (java_lang_String*) s
{
	return [self hasSuffix: s] == YES ? 1 : 0;
}



- (NSMutableString*) append___java_lang_String: (java_lang_String*) str
{
    [self appendString: str];
    [self retain];
    return self;
}

- (NSMutableString*) append___java_lang_Object: (java_lang_Object*) obj
{
    [self appendString: [obj toString]];
    [self retain];
    return self;
}

- (NSMutableString*) append___int: (int) i
{
	NSNumber* n = [NSNumber numberWithInt: i];
	[self appendString: [n stringValue]];
    [self retain];
	return self;
}


- (NSMutableString*) append___long: (long) l
{
	NSNumber* n = [NSNumber numberWithInt: l];
	[self appendString: [n stringValue]];
    [self retain];
	return self;
}

- (NSMutableString*) append___char: (char) i
{
	char temp[10];
	sprintf(temp, "%c", i);
	[self appendString: [NSString stringWithUTF8String: temp]];
    [self retain];
	return self;
}

- (NSMutableString*) append___float: (float) f
{
	NSNumber* n = [NSNumber numberWithFloat: f];
	[self appendString: [n stringValue]];
    [self retain];
	return self;
}

- (NSMutableString*) substring___int_int: (int) from :(int) to
{
	NSRange range;
	range.location = from;
	range.length = to - from;
	return [[NSMutableString alloc] initWithString: [self substringWithRange: range]];
}

- (NSMutableString*) substring___int: (int) from
{
	return [[NSMutableString alloc] initWithString: [self substringFromIndex: from]];
}

- (int) equals___java_lang_Object: (java_lang_Object*) o
{
    if ([o isKindOfClass: [NSMutableString class]] == NO) {
        return 0;
    }
    return [self compare: (NSString*) o] == 0;
}

- (int) equalsIgnoreCase___java_lang_String: (java_lang_String*) s
{
	return [self caseInsensitiveCompare: s] == 0;
}

- (NSMutableString*) toString
{
    [self retain];
    return self;
}

- (int) indexOf___int: (int) ch {
	int i;
	
	for (i = 0; i < [self length]; i++) {
		if ([self characterAtIndex: i] == ch)
			return i;
	}
	
	return -1;
}
	
- (int) startsWith___java_lang_String: (java_lang_String*) s {
	return [self hasPrefix: s] == YES ? 1 : 0;
}

- (int) lastIndexOf___java_lang_String: (java_lang_String*) s {
	NSRange range = [self rangeOfString: s options:NSBackwardsSearch];
	if (range.location == NSNotFound) {
		return -1;
	}

	return range.location;
}

- (int) indexOf___java_lang_String: (java_lang_String*) s {
	NSRange range = [self rangeOfString: s];
	if (range.location == NSNotFound) {
		return -1;
	}

}

@end
