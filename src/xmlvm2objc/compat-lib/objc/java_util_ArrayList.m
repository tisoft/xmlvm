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

#import "java_util_ArrayList.h"
#import "java_lang_IllegalArgumentException.h"

@implementation NSArray (cat_java_util_ArrayList)

- (java_util_Iterator*) iterator__
{
	return [[java_util_IteratorImpl alloc] init: [self objectEnumerator]];
}

- (int) size__
{
	return [self count];
}

- (int) contains___java_lang_Object :(java_lang_Object*) item
{
	return [self indexOf___java_lang_Object: item] != -1;
}

- (BOOL) isEmpty__
{
	return [self count]==0;
}

- (int) indexOf___java_lang_Object :(java_lang_Object*) item
{
	int i = [((NSMutableArray*) self) indexOfObject: item];
	return i == NSNotFound ? -1 : i;
}

- (java_lang_Object*) get___int :(int) idx
{
	java_lang_Object* item = (java_lang_Object*) [self objectAtIndex: idx];
	[item retain];
	return item;
}



@end


// java.util.ArrayList
//----------------------------------------------------------------------------
@implementation NSMutableArray (cat_java_util_ArrayList)

- (void) __init_java_util_ArrayList__ {
	[self __init_java_util_ArrayList___int:10];
}

- (void) __init_java_util_ArrayList___int:(int)initialCapacity {
//TODO since "init" has already been called, we cannot "initWithCapacity"
//	if (initialCapacity < ) {
//		java_lang_IllegalArgumentException* ex = [[java_lang_IllegalArgumentException alloc] init];
//		[ex __init_java_lang_IllegalArgumentException___java_lang_String:[NSMutableString stringWithString:@"Illegal Capacity"]];
//		@throw ex;
//	}
//	this.elementData = [XMLVMArray createSingleDimensionWithType:0 andSize:initialCapacity]; //Object array
}

- (void) __init_java_util_ArrayList___java_util_Collection:(java_util_Collection*)c {
	[self addAll___java_util_Collection:c];
}

- (BOOL) add___java_lang_Object :(java_lang_Object*) item
{
	[((NSMutableArray*) self) addObject: item];
	return TRUE;
}

- (void) add___int_java_lang_Object :(int) idx :(java_lang_Object*) item
{
    [((NSMutableArray*) self) insertObject :item atIndex :idx];
}

- (BOOL) addAll___java_util_Collection:(java_util_Collection*)c {
	java_util_Iterator* iter = [c iterator__];
	while ([iter hasNext__]) {
		java_lang_Object* obj = [iter next__];
		[self add___java_lang_Object:obj];
		[obj release];
	}
	[iter release];
	return [c size__] != 0;
}

- (java_lang_Object*) set___int_java_lang_Object :(int) idx: (java_lang_Object*) item
{
	java_lang_Object* removed = [self get___int: idx];
	[((NSMutableArray*) self) replaceObjectAtIndex: idx withObject: item];

	return removed;
}

- (java_lang_Object*) remove___int :(int) idx
{
	java_lang_Object* o = [self objectAtIndex: idx];
	[o retain];
	[((NSMutableArray*) self) removeObjectAtIndex: idx];
	return o;
}


- (BOOL) remove___java_lang_Object :(java_lang_Object*) item
{
	if ([((NSMutableArray*) self) indexOfObject: item] != NSNotFound) {
		[((NSMutableArray*) self) removeObject: item];
		return true;
	} else {
		return false;
	}
}

- (void) clear__
{
	[self removeAllObjects];
}

@end
