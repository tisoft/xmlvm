/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */


#import "org_xmlvm_iphone_NSBundle.h"

// NSBundle
//----------------------------------------------------------------------------
@implementation NSBundle (cat_NSBundle)
+ (NSBundle*) mainBundle__
{
	return_XMLVM(mainBundle)
}

- (java_lang_String*) pathForResource___java_lang_String_java_lang_String: (java_lang_String*) resource
                                                                         : (java_lang_String*) type
{
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	id path = [self pathForResource: resource ofType: (type == JAVA_NULL ? nil : type)];
	[path retain];
	[pool release];
	return path == nil ? JAVA_NULL : path;
}

- (java_lang_String*) pathForResource___java_lang_String_java_lang_String_java_lang_String
																		 : (java_lang_String*) resource
                                                                         : (java_lang_String*) type
                                                                         : (java_lang_String*) directory
{
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	id path = [self pathForResource: resource ofType: (type == JAVA_NULL ? nil : type) inDirectory: (directory == JAVA_NULL ? nil : directory)];
	[path retain];
	[pool release];
	return path == nil ? JAVA_NULL : path;
}

- (NSString*) bundlePath__
{
	return_XMLVM(bundlePath)
}

- (java_lang_String*) localizedStringForKey___java_lang_String_java_lang_String_java_lang_String:(java_lang_String*) key :(java_lang_String*) value :(java_lang_String*) tableName
{
    return_XMLVM(localizedStringForKey:XMLVM_NULL2NIL(key) value:XMLVM_NULL2NIL(value) table:XMLVM_NULL2NIL(tableName))
}


@end

