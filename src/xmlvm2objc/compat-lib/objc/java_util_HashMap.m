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

#import "java_util_HashMap.h"
#import "java_util_IteratorImpl.h"


// java.util.HashMap
//----------------------------------------------------------------------------
@implementation NSMutableDictionary (cat_java_util_HashMap)

- (void) __init_java_util_HashMap__
{
}

- (void) __init_java_util_HashMap___int: (int) size
{
}

- (void) clear__
{
	[self removeAllObjects];
}

- (java_util_Collection*) values__
{
	return [self retain];
}

- (java_util_Iterator*) iterator__
{
	return [[java_util_IteratorImpl alloc] init: [self objectEnumerator]];
}

@end