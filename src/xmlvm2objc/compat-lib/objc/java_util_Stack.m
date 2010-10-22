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

#import "java_util_Stack.h"


// java.util.Stack
//----------------------------------------------------------------------------
@implementation java_util_Stack

- (void) __init_java_util_Stack__
{
	theStack = [[NSMutableArray alloc] init];
}

- (void) dealloc
{
	[theStack release];
	[super dealloc];
}

- (java_util_Iterator*) iterator__
{
	return [[java_util_IteratorImpl alloc] init: [theStack objectEnumerator]];
}

- (int) size__
{
	return [theStack count];
}

- (java_lang_Object*) push___java_lang_Object :(java_lang_Object*) item
{
	[theStack addObject: item];
	[item retain];
	return item;
}

- (java_lang_Object*) get___int :(int) idx
{
	java_lang_Object* item = (java_lang_Object*) [theStack objectAtIndex: idx];
	[item retain];
	return item;
}

- (java_lang_Object*) remove___int :(int) idx
{
	java_lang_Object* o = [theStack objectAtIndex: idx];
	[o retain];
	[theStack removeObjectAtIndex: idx];
	return o;
}

- (java_lang_Object*) pop__
{
	java_lang_Object* o = [theStack lastObject];
	[o retain];
	[theStack removeLastObject];
	return o;
}

- (java_lang_Object*) peek__
{
	java_lang_Object* o = [theStack lastObject];
	[o retain];
	return o;
}

- (BOOL) remove___java_lang_Object :(java_lang_Object*) item
{
	if ([theStack indexOfObject: item] != NSNotFound) {
		[theStack removeObject: item];
		return true;
	} else {
		return false;
	}
}

@end
