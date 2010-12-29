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

#import "java_lang_Double.h"

@interface PrimitiveDouble : java_lang_Object
@end

@implementation PrimitiveDouble
@end

static PrimitiveDouble* primitiveDouble;
static java_lang_Class* primitiveDoubleClass;


// java.lang.Double
//----------------------------------------------------------------------------
@implementation java_lang_Double

+ (void) initialize
{
	primitiveDouble = [[PrimitiveDouble alloc] init];
	primitiveDoubleClass = [primitiveDouble getClass__];
}

- (id) init
{
	[super init];
	number = 0;
	return self;
}

- (id) copyWithZone:(NSZone *)zone
{
    java_lang_Double* other = [[[self class] allocWithZone:zone] init];
    other->number = self->number;
    return other;
}

- (NSUInteger) hash
{
	return number;
}

+ (java_lang_Class*) _GET_TYPE
{
	return primitiveDoubleClass;
}

- (void) __init_java_lang_Double___double :(double) d
{
	number = d;
}

- (BOOL)isEqual:(id)anObject
{
	return [anObject isKindOfClass: [java_lang_Double class]] && ((java_lang_Double*) anObject)-> number == number;
}

- (double) doubleValue__
{
	return number;
}

+ (double) parseDouble___java_lang_String: (java_lang_String *) str
{
	return atof([str UTF8String]);
}

- (java_lang_String*) toString__
{
	return [java_lang_Double toString___double:number];
}

+ (java_lang_String*) toString___double: (double) d
{
	return [[[NSNumber numberWithDouble: d] stringValue] retain];
}

+ (java_lang_Double*) valueOf___double: (double) d
{
	java_lang_Double* o = [[java_lang_Double alloc] init];
	[o __init_java_lang_Double___double:d];
	return o;
}

@end
