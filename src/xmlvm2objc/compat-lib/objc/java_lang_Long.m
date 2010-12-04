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

#import "java_lang_Long.h"
#import "java_lang_RuntimeException.h"

// java.lang.Long
//----------------------------------------------------------------------------
@implementation java_lang_Long

- (id) init
{
	[super init];
	number = 0;
	return self;
}

- (id) copyWithZone:(NSZone *)zone
{
    java_lang_Long* other = [[[self class] allocWithZone:zone] init];
    other->number = self->number;
    return other;
}

- (NSUInteger) hash
{
	return number;
}

- (void) __init_java_lang_Long___long :(JAVA_LONG) l
{
	number = l;
}

- (BOOL)isEqual:(id)anObject
{
	return [anObject isKindOfClass: [java_lang_Long class]] && ((java_lang_Long*) anObject)-> number == number;
}

- (JAVA_LONG) longValue__
{
	return number;
}

+ (JAVA_LONG) parseLong___java_lang_String: (java_lang_String *) str
{
	return atol([str UTF8String]);
}

+ (JAVA_LONG) parseLong___java_lang_String_int: (java_lang_String*) str :(int) radix
{
    return strtoul([str UTF8String], nil, radix);
}

+ (java_lang_Long*) valueOf___long: (JAVA_LONG) l {
	java_lang_Long* result = [[java_lang_Long alloc] init];
	[result __init_java_lang_Long___long:l];
	return result;	
}

static BOOL instanceof(id obj, const char *className) {
	return obj != JAVA_NULL &&
		([obj isKindOfClass: objc_getClass(className)] ||
			[obj conformsToProtocol: objc_getProtocol(className)]);	
}

//Signature from java_lang_Comparable
- (int) compareTo___java_lang_Object: (java_lang_Object*) obj {
	if (!instanceof(obj, "java_lang_Long")) {
//TODO throw a java_lang_ClassCastException (doesn't exist yet) instead of a java_lang_RuntimeException
		java_lang_RuntimeException* ex = [[java_lang_RuntimeException alloc] init];
		[ex __init_java_lang_RuntimeException___java_lang_String:[NSMutableString stringWithString:@"ClassCastException"]];
		@throw ex;
	}
	return [self compareTo___java_lang_Long:(java_lang_Long*)obj];
}

- (int) compareTo___java_lang_Long: (java_lang_Long*) l {
	JAVA_LONG thisVal = [self longValue__];
	JAVA_LONG anotherVal = [l longValue__];
	return (thisVal < anotherVal ? -1 : (thisVal == anotherVal ? 0 : 1));
}

@end
