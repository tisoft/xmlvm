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

typedef NSString java_lang_String;


@interface NSString (cat_java_lang_String) //java_lang_String : java_lang_Object 

- (void) __init_java_lang_String___java_lang_String: (java_lang_String*) str;
+ (java_lang_String*) valueOf___int: (int) i;
+ (java_lang_String*) valueOf___float: (float) f;
+ (java_lang_String*) valueOf___double: (double) d;
+ (java_lang_String*) valueOf___java_lang_Object: (java_lang_Object*) o;
- (unichar) charAt___int: (int) idx;
- (int) lastIndexOf___int: (int) ch;
- (int) endsWith___java_lang_String: (java_lang_String*) s;
- (java_lang_String*) substring___int_int: (int) from :(int) to;
- (java_lang_String*) substring___int: (int) from;
- (int) equals___java_lang_Object: (java_lang_Object*) o;
- (int) equalsIgnoreCase___java_lang_String: (java_lang_String*) s;
- (java_lang_String*) toString;

- (int) lastIndexOf___java_lang_String: (java_lang_String*) s;
- (int) indexOf___java_lang_String: (java_lang_String*) s;
- (int) indexOf___int: (int) ch;
- (int) startsWith___java_lang_String: (java_lang_String*) s;
@end
