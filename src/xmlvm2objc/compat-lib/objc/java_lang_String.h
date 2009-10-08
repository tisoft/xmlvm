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

typedef NSMutableString java_lang_String;


@interface NSMutableString (cat_java_lang_String) //java_lang_String : java_lang_Object 

- (void) __init_java_lang_String___java_lang_String: (java_lang_String*) str;
- (void) __init_java_lang_StringBuilder;
- (void) __init_java_lang_StringBuilder___java_lang_String: (java_lang_String*) str;
+ (NSMutableString*) valueOf___int: (int) i;
+ (NSMutableString*) valueOf___float: (float) f;
+ (NSMutableString*) valueOf___double: (double) d;
+ (NSMutableString*) valueOf___java_lang_Object: (java_lang_Object*) o;
- (unichar) charAt___int: (int) idx;
- (int) lastIndexOf___int: (int) ch;
- (int) endsWith___java_lang_String: (java_lang_String*) s;
- (NSMutableString*) append___java_lang_String: (java_lang_String*) str;
- (NSMutableString*) append___java_lang_Object: (java_lang_Object*) obj;
- (NSMutableString*) append___int: (int) i;
- (NSMutableString*) append___long: (long) l;
- (NSMutableString*) append___char: (char) i;
- (NSMutableString*) append___float: (float) f;
- (NSMutableString*) substring___int_int: (int) from :(int) to;
- (NSMutableString*) substring___int: (int) from;
- (int) equals___java_lang_Object: (java_lang_Object*) o;
- (int) equalsIgnoreCase___java_lang_String: (java_lang_String*) s;
- (NSMutableString*) toString;

- (int) lastIndexOf___java_lang_String: (java_lang_String*) s;
- (int) indexOf___java_lang_String: (java_lang_String*) s;
- (int) indexOf___int: (int) ch;
- (int) startsWith___java_lang_String: (java_lang_String*) s;
@end
