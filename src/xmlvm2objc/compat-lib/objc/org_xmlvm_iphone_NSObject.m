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

#import "java_lang_Object.h"
#import "java_lang_Class.h"
#import "java_lang_String.h"

// java.lang.Object
//----------------------------------------------------------------------------
@implementation NSObject (cat_org_xmlvm_iphone_NSObject) 

+ (void) performSelectorOnMainThread___java_lang_Object_java_lang_String_java_lang_Object_boolean
              :(java_lang_Object*) target
              :(java_lang_String*) method
              :(java_lang_Object*) arg
              :(BOOL) waitUntilDone
{
	NSMutableString* selectorName = [NSMutableString stringWithString:method];
	[selectorName appendString:@"___java_lang_Object:"];
	SEL selector = NSSelectorFromString(selectorName);
	
	[target
        performSelectorOnMainThread:selector
        withObject:arg
        waitUntilDone:waitUntilDone];
}

- (void) __init_org_xmlvm_iphone_NSObject__
{
}

- (void) release__
{
	[self release];
}

- (NSObject*) retain__
{
	return [self retain];
}

- (void) dealloc__
{
}

@end
