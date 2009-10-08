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

#import "java_lang_reflect_Field.h"
#import "java_lang_Class.h"


// java.lang.reflect.Field
//----------------------------------------------------------------------------
@implementation java_lang_reflect_Field;

- (id) initWithName: (java_lang_String*) n isStatic: (BOOL) flag
{
	[super init];
	self->name = n;
	[self->name retain];
	self->isStatic = flag;
	return self;
}

- (void) dealloc
{
	[self->name release];
	[super dealloc];
}

- (void) __init_java_lang_reflect_Field
{
}

- (java_lang_String*) getName
{
	java_lang_String* n = self->name;
	[n retain];
	return n;
}

- (int) getInt___java_lang_Object: (java_lang_Object*) obj
{
	int val = 0;
	if (isStatic) {
		NSMutableString* mangledFieldName = [NSMutableString stringWithString: @"_GET_"];
		[mangledFieldName appendString: name];
		SEL sel = NSSelectorFromString(mangledFieldName);
		val = (int) [((java_lang_Class*) obj)->clazz performSelector: sel];
	} else {
		// TODO non-static fields
	}
	return val;
}

@end
