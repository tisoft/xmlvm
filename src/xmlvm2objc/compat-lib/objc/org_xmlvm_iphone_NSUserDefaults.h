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


#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_NSData.h"

// NSUserDefaults
//----------------------------------------------------------------------------
typedef NSUserDefaults org_xmlvm_iphone_NSUserDefaults;
@interface NSUserDefaults (cat_org_xmlvm_iphone_NSUserDefaults)
+ (org_xmlvm_iphone_NSUserDefaults*) standardUserDefaults__;
- (java_lang_Object*) objectForKey___java_lang_String: (java_lang_String*) key;
- (void) setObject___java_lang_Object_java_lang_String: (java_lang_Object*) value :(java_lang_String*) key;
- (void) setInteger___int_java_lang_String :(int) value :(java_lang_String*) key;
- (int) integerForKey___java_lang_String :(java_lang_String*) key;
- (void) setBool___boolean_java_lang_String :(int) value :(java_lang_String*) key;
- (int) boolForKey___java_lang_String :(java_lang_String*) key;
- (void) setFloat___float_java_lang_String :(float) value :(java_lang_String*) key;
- (float) floatForKey___java_lang_String :(java_lang_String*) key;

- (org_xmlvm_iphone_NSData*) dataForKey___java_lang_String :(java_lang_String*) key;
- (java_lang_String*) stringForKey___java_lang_String :(java_lang_String*) key;
- (BOOL) synchronize__;
- (void) remove___java_lang_String :(java_lang_String*) key;
@end
