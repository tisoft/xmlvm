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

#import "java_lang_Integer.h"
#import "java_lang_RuntimeException.h"

@interface PrimitiveInt : java_lang_Object
@end

@implementation PrimitiveInt
@end

static PrimitiveInt* primitiveInt;
static java_lang_Class* primitiveIntClass;


// java.lang.Integer
//----------------------------------------------------------------------------
@implementation java_lang_Integer

+ (void) initialize
{
	primitiveInt = [[PrimitiveInt alloc] init];
	primitiveIntClass = [primitiveInt getClass__];
}

- (id) init
{
	[super init];
	number = 0;
	return self;
}

- (id) copyWithZone:(NSZone *)zone
{
    java_lang_Integer* other = [[[self class] allocWithZone:zone] init];
    other->number = self->number;
    return other;
}

- (NSUInteger) hash
{
	return number;
}

+ (java_lang_Class*) _GET_TYPE
{
	return primitiveIntClass;
}

- (void) __init_java_lang_Integer___int :(int) i
{
	number = i;
}

- (BOOL)isEqual:(id)anObject
{
	return [anObject isKindOfClass: [java_lang_Integer class]] && ((java_lang_Integer*) anObject)-> number == number;
}

- (BOOL)equals___java_lang_Object:(java_lang_Object*)anObject
{
	return [anObject isKindOfClass: [java_lang_Integer class]] && ((java_lang_Integer*) anObject)-> number == number;
}

- (int) intValue__
{
	return number;
}

+ (int) parseInt___java_lang_String: (java_lang_String *) str
{
	return atoi([str UTF8String]);
}

- (java_lang_String*) toString__
{
	return [java_lang_Integer toString___int:number];
}

+ (java_lang_String*) toString___int: (int) i
{
	return [[[NSNumber numberWithInt: i] stringValue] retain];
}

+ (java_lang_Integer*) valueOf___int: (int) i
{
	java_lang_Integer* o = [[java_lang_Integer alloc] init];
	[o __init_java_lang_Integer___int:i];
	return o;
}

static BOOL instanceof(id obj, const char *className) {
	return obj != JAVA_NULL &&
		([obj isKindOfClass: objc_getClass(className)] ||
			[obj conformsToProtocol: objc_getProtocol(className)]);	
}

//Signature from java_lang_Comparable
- (int) compareTo___java_lang_Object: (java_lang_Object*) obj {
	if (!instanceof(obj, "java_lang_Integer")) {
//TODO throw a java_lang_ClassCastException (doesn't exist yet) instead of a java_lang_RuntimeException
		java_lang_RuntimeException* ex = [[java_lang_RuntimeException alloc] init];
		[ex __init_java_lang_RuntimeException___java_lang_String:[NSMutableString stringWithString:@"ClassCastException"]];
		@throw ex;
	}
	return [self compareTo___java_lang_Integer:(java_lang_Integer*)obj];
}

- (int) compareTo___java_lang_Integer: (java_lang_Integer*) i {
	long thisVal = [self intValue__];
	long anotherVal = [i intValue__];
	return (thisVal < anotherVal ? -1 : (thisVal == anotherVal ? 0 : 1));
}

@end
