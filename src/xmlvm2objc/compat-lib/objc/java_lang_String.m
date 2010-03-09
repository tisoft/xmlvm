/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

#import "java_lang_String.h"


// java.lang.String
//----------------------------------------------------------------------------
@implementation NSMutableString (cat_java_lang_String)

- (void) __init_java_lang_String___java_lang_String: (java_lang_String*) str
{
    [self setString: str];
}

- (void) __init_java_lang_String___byte_ARRAYTYPE: (XMLVMArray*) bytes
{
	for(int i = 0; i < bytes->length; i++) {
		[self appendFormat:@"%c", (char) bytes->array.i[i]];
	}
}

- (void) __init_java_lang_String___char_ARRAYTYPE: (XMLVMArray*) chars
{
	for(int i = 0; i < chars->length; i++) {
		[self appendFormat:@"%c", (char) chars->array.i[i]];
	}
}

+ (java_lang_String*) valueOf___int: (int) i
{
    NSNumber* n = [NSNumber numberWithInt: i];
    return [[NSString alloc] initWithString: [n stringValue]];
}

+ (java_lang_String*) valueOf___float: (float) f
{
    NSNumber* n = [NSNumber numberWithFloat: f];
    return [[NSString alloc] initWithString: [n stringValue]];
}

+ (java_lang_String*) valueOf___double: (double) d
{
    NSNumber* n = [NSNumber numberWithDouble: d];
    return [[NSString alloc] initWithString: [n stringValue]];
}

+ (java_lang_String*) valueOf___java_lang_Object: (java_lang_Object*) o
{
    if ([o isKindOfClass: [NSString class]] == YES) {
        return [[NSString alloc] initWithString: (NSString*) o];
    }
    return [[NSString alloc] initWithString: @"Unkown type in valueOf___java_lang_Object"];
}

- (XMLVMArray*) getBytes__
{
	XMLVMArray *bytes = [XMLVMArray createSingleDimensionWithType: 3 andSize: self.length];
	for (int i = 0; i < self.length; i++) {
		bytes->array.i[i] = [self characterAtIndex:i];
	}
	return [bytes retain];
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

- (int) contains___java_lang_CharSequence: (java_lang_CharSequence*) str
{
	return [self rangeOfString:str].location != NSNotFound;
}

- (int) endsWith___java_lang_String: (java_lang_String*) s
{
	return [self hasSuffix: s] == YES ? 1 : 0;
}

- (java_lang_String*) substring___int_int: (int) from :(int) to
{
	NSRange range;
	range.location = from;
	range.length = to - from;
	return [[NSString alloc] initWithString: [self substringWithRange: range]];
}

- (java_lang_String*) substring___int: (int) from
{
	return [[NSString alloc] initWithString: [self substringFromIndex: from]];
}

- (int) compareTo___java_lang_String: (java_lang_String*) str
{
    return [self compare: str];
}

- (int) equals___java_lang_Object: (java_lang_Object*) o
{
    if ([o isKindOfClass: [NSString class]] == NO) {
        return 0;
    }
    return [self compare: (NSString*) o] == 0;
}

- (int) equalsIgnoreCase___java_lang_String: (java_lang_String*) s
{
	return [self caseInsensitiveCompare: s] == 0;
}

- (java_lang_String*) toString__
{
    [self retain];
    return self;
}

- (java_lang_String*) toLowerCase__
{
    return [[NSMutableString alloc] initWithString:[self lowercaseString]];
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

- (int) indexOf___int: (int) ch {
	int i;
	
	for (i = 0; i < [self length]; i++) {
		if ([self characterAtIndex: i] == ch)
			return i;
	}
	
	return -1;
}
	
- (int) indexOf___java_lang_String: (java_lang_String*) s {
	NSRange range = [self rangeOfString: s];
	if (range.location == NSNotFound) {
		return -1;
	}
	return range.location;
}

- (int) length__
{
	return [self length];
}

- (java_lang_String*) replaceAll___java_lang_String_java_lang_String :(java_lang_String*)a :(java_lang_String*)b {
	NSMutableString *m = [[NSMutableString alloc] initWithString:self];
	NSRange range;
	range.location = 0;
	range.length = [m length__];

	[m replaceOccurrencesOfString:a withString:b options:(NSLiteralSearch) range:range];
	return m;
}

- (XMLVMArray*) split___java_lang_String :(java_lang_String*)s
{
	NSMutableArray *chunks = [self componentsSeparatedByString:s];
	int length = [chunks count];

	XMLVMArray *result = [XMLVMArray createSingleDimensionWithType: 0 andSize: length]; // object reference array
	for (int i=0; i<length; i++) {
		result->array.o[i] = [[chunks objectAtIndex: i] retain];
	}

	return [result retain];
}

@end
