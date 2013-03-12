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

#import "java_lang_Character.h"

@interface PrimitiveCharacter : java_lang_Object
@end

@implementation PrimitiveCharacter
@end

static PrimitiveCharacter* primitiveCharacter;
static java_lang_Class* primitiveCharacterClass;


// java.lang.Character
//----------------------------------------------------------------------------
@implementation java_lang_Character

- (void) __init_java_lang_Character___char :(unichar) charParm {
	self->c = charParm;
}

- (unichar) charValue__ {
	return self->c;
}

+ (void) initialize
{
	primitiveCharacter = [[PrimitiveCharacter alloc] init];
	primitiveCharacterClass = [primitiveCharacter getClass__];
}

+ (java_lang_Class*) _GET_TYPE
{
	return primitiveCharacterClass;
}

+ (java_lang_String*) toString___char: (unichar) c
{
    return [[NSString alloc] initWithFormat:@"%C", c];
}

+ (java_lang_Character*) valueOf___char: (unichar) c {
	java_lang_Character* result = [[java_lang_Character alloc] init];
	[result __init_java_lang_Character___char:c];
	return result;	
}

@end
