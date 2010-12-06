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

#import "java_util_HashSet.h"


// java.util.HashSet
//----------------------------------------------------------------------------
@implementation NSMutableSet (cat_java_util_HashSet)

- (void) __init_java_util_HashSet__
{
}

- (void) __init_java_util_HashSet___java_util_Collection:(java_util_Collection*)c
{
	[self addAll___java_util_Collection: c];
}

- (BOOL) add___java_lang_Object:(java_lang_Object*)e
{
	BOOL contains = [self containsObject:e];
	[self addObject:e];
	return !contains;
}

// TODO move this to AbstractCollection where it really belongs
- (BOOL) addAll___java_util_Collection: (java_util_Collection*) c
{
	int origSize = [self size__];
	java_util_Iterator* iter = [c iterator__];
	while ([iter hasNext__]) {
		java_lang_Object* obj = [iter next__];
		[self add___java_lang_Object:obj];
		[obj release];
	}
	[iter release];
	return origSize == [self size__];
}

- (int) size__
{
	return [self count];
}

- (void) clear__
{
	[self removeAllObjects];
}

//Returns an iterator over the elements in this set. The elements are returned in no particular order.
- (java_util_Iterator*) iterator__
{
	return [[java_util_IteratorImpl alloc] init: [self objectEnumerator]];
}

- (BOOL) contains___java_lang_Object: (java_lang_Object*) o
{
	java_util_Iterator* iter = [self iterator__];
	while ([iter hasNext__]) {
		java_lang_Object* obj = [iter next__];
		if (o == JAVA_NULL ? obj == JAVA_NULL : [o equals___java_lang_Object:obj]) {
			[obj release];
			[iter release];
			return TRUE;
		}
		[obj release];
	}
	[iter release];
	return FALSE;
}

@end
