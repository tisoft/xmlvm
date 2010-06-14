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


// java.lang.Boolean
//----------------------------------------------------------------------------
@interface java_lang_Boolean : java_lang_Object {

int value;

}

- (id) init;
- (NSUInteger) hash;
- (void) __init_java_lang_Boolean___int :(int) i;
- (void) __init_java_lang_Boolean___boolean :(BOOL) b;
+ (java_lang_Class*) _GET_TYPE;
+ (BOOL) parseBoolean___java_lang_String:(java_lang_String*) str;
- (BOOL)isEqual:(id)anObject;
- (int) booleanValue__;
+ (java_lang_Boolean*) valueOf___java_lang_String:(java_lang_String*) s;

@end
