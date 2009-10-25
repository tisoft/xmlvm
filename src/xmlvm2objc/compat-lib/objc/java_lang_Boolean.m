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

#import "java_lang_Boolean.h"


// java.lang.Boolean
//----------------------------------------------------------------------------
@implementation java_lang_Boolean

- (id) init
{
	[super init];
	value = 0;
	return self;
}

- (NSUInteger) hash
{
	return value;
}

- (void) __init_java_lang_Boolean___boolean :(BOOL) b
{
	value = (int) b;
}

- (void) __init_java_lang_Boolean___int :(int) i
{
	value = i;
}

- (BOOL)isEqual:(id)anObject
{
	return [anObject isKindOfClass: [java_lang_Boolean class]] && ((java_lang_Boolean*) anObject)-> value == value;
}

- (int) booleanValue__
{
	return value;
}

@end
