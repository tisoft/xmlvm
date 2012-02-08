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

#import "java_lang_Float.h"

@interface PrimitiveFloat : java_lang_Object
@end

@implementation PrimitiveFloat
@end

static PrimitiveFloat* primitiveFloat;
static java_lang_Class* primitiveFloatClass;

// java.lang.Float
//----------------------------------------------------------------------------
@implementation java_lang_Float

+ (void) initialize
{
  primitiveFloat = [[PrimitiveFloat alloc] init];
  primitiveFloatClass = [primitiveFloat getClass__];
}

- (id) init
{
	[super init];
	number = 0.0f;
	return self;
}

- (id) copyWithZone:(NSZone *)zone
{
    java_lang_Float* other = [[[self class] allocWithZone:zone] init];
    other->number = self->number;
    return other;
}

- (NSUInteger) hash
{
	return number;
}

- (void) __init_java_lang_Float___float :(float) f
{
	number = f;
}

- (BOOL)isEqual:(id)anObject
{
	return [anObject isKindOfClass: [java_lang_Float class]] && ((java_lang_Float*) anObject)-> number == number;
}

- (java_lang_String*) toString__
{
	return [java_lang_Float toString___float:number];
}

+ (java_lang_String*) toString___float: (float) f
{
	return [[[NSNumber numberWithFloat: f] stringValue] retain];
}

- (float) floatValue__
{
	return number;
}

+ (float) parseFloat___java_lang_String: (java_lang_String *) str
{
	return strtof([str UTF8String], NULL);
}

+ (java_lang_Class*) _GET_TYPE
{
	return primitiveFloatClass;
}

+ (java_lang_Float*) valueOf___float:(float) value {
    java_lang_Float * f = [[java_lang_Float alloc] init];
    f->number = value;
    return f;
}


@end
