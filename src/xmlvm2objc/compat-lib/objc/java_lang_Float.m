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

#import "java_lang_Float.h"


// java.lang.Float
//----------------------------------------------------------------------------
@implementation java_lang_Float

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

- (void) __init_java_lang_Flaot___float :(float) f
{
	number = f;
}

- (BOOL)isEqual:(id)anObject
{
	return [anObject isKindOfClass: [java_lang_Float class]] && ((java_lang_Float*) anObject)-> number == number;
}

- (float) floatValue__
{
	return number;
}

+ (float) parseFloat___java_lang_String: (java_lang_String *) str
{
	return atof([str UTF8String]);
}

@end
