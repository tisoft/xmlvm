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


#import "org_xmlvm_iphone_NSUserDefaults.h"


// NSUserDefaults
//----------------------------------------------------------------------------
@implementation NSUserDefaults (cat_org_xmlvm_iphone_NSUserDefaults)

+ (org_xmlvm_iphone_NSUserDefaults*) standardUserDefaults__
{
	return_XMLVM_SELECTOR(NSUserDefaults standardUserDefaults)
}

- (java_lang_Object*) objectForKey___java_lang_String: (java_lang_String*) key
{
	return_XMLVM(objectForKey:key)
}

- (void) setObject___java_lang_Object_java_lang_String: (java_lang_Object*) value :(java_lang_String*) key
{
	[self setObject: value forKey: key];
}

- (void) setInteger___int_java_lang_String :(int) value :(java_lang_String*) key
{
	[self setInteger: value forKey: key];
}

- (int) integerForKey___java_lang_String :(java_lang_String*) key
{
	return [self integerForKey:key];
}

- (void) setBool___boolean_java_lang_String :(int) value :(java_lang_String*) key
{
	[self setBool: (value ? TRUE : FALSE) forKey: key];
}

- (int) boolForKey___java_lang_String :(java_lang_String*) key
{
	return [self boolForKey: key] ? 1 : 0;
}

- (void) setFloat___float_java_lang_String :(float) value :(java_lang_String*) key
{
	[self setFloat: value forKey: key];
}

- (float) floatForKey___java_lang_String :(java_lang_String*) key
{
	return [self floatForKey: key];
}

- (org_xmlvm_iphone_NSData*) dataForKey___java_lang_String :(java_lang_String*) key
{
	return_XMLVM(dataForKey:key)
}

- (java_lang_String*) stringForKey___java_lang_String :(java_lang_String*) key
{	
	return_XMLVM(stringForKey:key)
}

- (void) remove___java_lang_String :(java_lang_String*) key
{
	[self removeObjectForKey:key];
}

- (BOOL) synchronize__
{
	return [self synchronize];
}

@end
