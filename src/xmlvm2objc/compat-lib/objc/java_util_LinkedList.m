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

#import "java_util_LinkedList.h"


// java.util.LinkedList
//----------------------------------------------------------------------------
@implementation NSMutableArray (cat_java_util_LinkedList)

- (void) __init_java_util_LinkedList__
{
}

- (java_lang_Object*) removeFirst__
{
	return [self remove__];
}

- (bool) offer___java_lang_Object:(java_lang_Object *) item
{
	[self addObject:item];
	return YES;
}

- (java_lang_Object*) peek__
{
	if ([self count]<1) {
		return [JAVA_NULL retain];
	}
	return [[self objectAtIndex:0] retain];
}

- (java_lang_Object*) poll__
{
	java_lang_Object *o = [self peek__];
	if (o != JAVA_NULL) {
		[self removeObjectAtIndex:0];
	}
	return o;
}

- (java_lang_Object*) element__
{
	// TODO should throw exception if list is empty
	return [self peek__];
}

- (java_lang_Object*) remove__
{
	// TODO should throw exception if list is empty
	return [self poll__];
}

@end
