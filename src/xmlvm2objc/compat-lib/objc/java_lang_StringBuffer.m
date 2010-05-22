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

#import "java_lang_StringBuffer.h"


// java.lang.StringBuffer
//----------------------------------------------------------------------------
@implementation NSMutableString (cat_java_lang_StringBuffer)

- (void) __init_java_lang_StringBuilder__
{
    [self setString: @""];
}

- (void) __init_java_lang_StringBuilder___java_lang_String: (java_lang_String*) str
{
    [self setString: str];
}

- (void) __init_java_lang_StringBuilder___java_lang_CharSequence: (id<java_lang_CharSequence>) str
{
	// TODO Implement this
}

- (void) __init_java_lang_StringBuffer__
{
	[self setString: @""];
}

- (void) __init_java_lang_StringBuffer___java_lang_String: (java_lang_String*) str
{
    [self setString: str];
}

- (java_lang_StringBuffer*) append___java_lang_String: (java_lang_String*) str
{
	if (str==JAVA_NULL)
		str = @"null";
    [self appendString: str];
    [self retain];
    return self;
}

- (java_lang_StringBuffer*) append___java_lang_Object: (java_lang_Object*) obj
{
	if (obj==JAVA_NULL)
		[self appendString:@"null"];
	else 
		[self appendString: [obj toString__]];
    [self retain];
    return self;
}

- (java_lang_StringBuffer*) append___int: (int) i
{
	NSNumber* n = [NSNumber numberWithInt: i];
	[self appendString: [n stringValue]];
    [self retain];
	return self;
}


- (java_lang_StringBuffer*) append___long: (long) l
{
	NSNumber* n = [NSNumber numberWithInt: l];
	[self appendString: [n stringValue]];
    [self retain];
	return self;
}

- (java_lang_StringBuffer*) append___char: (char) i
{
	char temp[10];
	sprintf(temp, "%c", i);
	[self appendString: [NSString stringWithUTF8String: temp]];
    [self retain];
	return self;
}

- (java_lang_StringBuffer*) append___float: (float) f
{
	[self appendString: [NSString stringWithFormat: @"%1.1f", f]];
    [self retain];
	return self;
}

- (java_lang_StringBuffer*) append___double: (double) d
{
	[self appendString: [NSString stringWithFormat: @"%f", d]];
    [self retain];
	return self;
}

- (java_lang_StringBuffer*) append___boolean: (BOOL) b;
{
	[self appendString: b ? @"true" : @"false"];
	[self retain];
	return self;
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

- (java_lang_String*) toString__
{
    return [[NSString alloc] initWithString: self];
}

- (int) indexOf___java_lang_String: (java_lang_String*) s {
	NSRange range = [self rangeOfString: s];
	if (range.location == NSNotFound) {
		return -1;
	}
	return range.location;
}

@end

