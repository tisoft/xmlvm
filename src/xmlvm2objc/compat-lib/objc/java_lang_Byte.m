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

#import "java_lang_Byte.h"

@interface PrimitiveByte : java_lang_Object
@end

@implementation PrimitiveByte
@end

static PrimitiveByte* primitiveByte;
static java_lang_Class* primitiveByteClass;


// java.lang.Byte
//----------------------------------------------------------------------------
@implementation java_lang_Byte

+ (void) initialize
{
	primitiveByte = [[PrimitiveByte alloc] init];
	primitiveByteClass = [primitiveByte getClass__];
}

+ (java_lang_Class*) _GET_TYPE
{
	return primitiveByteClass;
}

- (id) init
{
	[super init];
	number = 0;
	return self;
}

- (id) copyWithZone:(NSZone *)zone
{
    java_lang_Byte* other = [[[self class] allocWithZone:zone] init];
    other->number = self->number;
    return other;
}

- (NSUInteger) hash
{
	return number;
}

- (void) __init_java_lang_Byte___byte :(unsigned char) b
{
	number = b;
}

- (BOOL)isEqual:(id)anObject
{
	return [anObject isKindOfClass: [java_lang_Byte class]] && ((java_lang_Byte*) anObject)-> number == number;
}

- (unsigned char) byteValue__
{
	return number;
}

+ (unsigned char) parseByte___java_lang_String: (java_lang_String *) str
{
	return (unsigned char) atol([str UTF8String]);
}

+ (unsigned char) parseByte___java_lang_String_int: (java_lang_String*) str :(int) radix
{
    return (unsigned char) strtoul([str UTF8String], nil, radix);
}

@end
