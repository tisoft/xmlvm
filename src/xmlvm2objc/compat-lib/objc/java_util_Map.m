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

#import "java_util_Map.h"


// java.util.Map
//----------------------------------------------------------------------------
@implementation NSDictionary (cat_java_util_Map)

- (java_lang_Object*) put___java_lang_Object_java_lang_Object :(java_lang_Object*) key
                                                              :(java_lang_Object*) value
{
	id k = [key conformsToProtocol: @protocol(NSCopying)] ? key : [NSValue valueWithPointer: key];
	[((NSMutableDictionary*) self) setObject: value forKey: k];
	[value retain];
	return value;
}

- (java_lang_Object*) get___java_lang_Object :(java_lang_Object*) key
{
	id k = [key conformsToProtocol: @protocol(NSCopying)] ? key : [NSValue valueWithPointer: key];
	id value = [self objectForKey: k];
	if (value == nil)
		return JAVA_NULL;
	[value retain];
	return (java_lang_Object*) value;
}

- (java_util_Set*) keySet__
{
	NSEnumerator* e = [[self allKeys] objectEnumerator];
	NSMutableArray* ma = [[NSMutableArray alloc] init];
	id v;
	
	while (v = [e nextObject]) {
		id k = [v isKindOfClass: [NSValue class]] ? [v pointerValue] : v;
		[ma addObject: k];
	}
	
	NSSet* keys = [NSSet setWithArray: ma];
	[ma release];
	[keys retain];
	return keys;
}

- (int) size__
{
	return [self count];
}

@end
