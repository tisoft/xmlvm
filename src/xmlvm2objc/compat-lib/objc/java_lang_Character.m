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

- (void) __init_java_lang_Character___char :(char) charParm {
	self->c = charParm;
}

- (char) charValue__ {
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

+ (java_lang_String*) toString___char: (char) c
{
	NSString* s = [NSString stringWithFormat:@"%c", c];
	return [s retain];
}

+ (java_lang_Character*) valueOf___char: (char) c {
	java_lang_Character* result = [[java_lang_Character alloc] init];
	[result __init_java_lang_Character___char:c];
	return result;	
}

@end
