/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

#import "java_lang_Long.h"
#import "java_lang_RuntimeException.h"
#import "java_lang_Integer.h"
#import "java_lang_NumberFormatException.h"

@interface PrimitiveLong : java_lang_Object
@end

@implementation PrimitiveLong
@end

static PrimitiveLong* primitiveLong;
static java_lang_Class* primitiveLongClass;


// java.lang.Long
//----------------------------------------------------------------------------
@implementation java_lang_Long

+ (void) initialize
{
	primitiveLong = [[PrimitiveLong alloc] init];
	primitiveLongClass = [primitiveLong getClass__];
}

+ (java_lang_Class*) _GET_TYPE
{
	return primitiveLongClass;
}

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
    return strtoll([str UTF8String], nil, 10);
}

+ (JAVA_LONG) parseLong___java_lang_String_int: (java_lang_String*) str :(int) radix
{
// TODO throw NumberFormatException when appropriate
    return strtoll([str UTF8String], nil, radix);
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
