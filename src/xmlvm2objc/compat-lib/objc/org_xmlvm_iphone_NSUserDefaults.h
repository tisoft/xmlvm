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
