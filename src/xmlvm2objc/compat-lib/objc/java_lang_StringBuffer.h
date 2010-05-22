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
#import "java_lang_String.h"
#import "java_lang_CharSequence.h"


typedef NSMutableString java_lang_StringBuffer;

@interface NSMutableString (cat_java_lang_StringBuffer) //java_lang_String : java_lang_Object 

- (void) __init_java_lang_StringBuilder__;
- (void) __init_java_lang_StringBuilder___java_lang_String: (java_lang_String*) str;
- (void) __init_java_lang_StringBuilder___java_lang_CharSequence: (id<java_lang_CharSequence>) str;
- (void) __init_java_lang_StringBuffer__;
- (void) __init_java_lang_StringBuffer___java_lang_String: (java_lang_String*) str;
- (java_lang_StringBuffer*) append___java_lang_String: (java_lang_String*) str;
- (java_lang_StringBuffer*) append___java_lang_Object: (java_lang_Object*) obj;
- (java_lang_StringBuffer*) append___int: (int) i;
- (java_lang_StringBuffer*) append___long: (long) l;
- (java_lang_StringBuffer*) append___char: (char) i;
- (java_lang_StringBuffer*) append___float: (float) f;
- (java_lang_StringBuffer*) append___double: (double) d;
- (java_lang_StringBuffer*) append___boolean: (BOOL) b;
- (java_lang_String*) substring___int_int: (int) from :(int) to;
- (java_lang_String*) substring___int: (int) from;
- (java_lang_String*) toString__;
- (int) indexOf___java_lang_String: (java_lang_String*) s;


@end
