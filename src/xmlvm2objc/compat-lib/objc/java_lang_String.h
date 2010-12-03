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
#import "java_lang_CharSequence.h"

typedef NSMutableString java_lang_String;

@interface NSMutableString (cat_java_lang_String) 

- (void) __init_java_lang_String___java_lang_String: (java_lang_String*) str;
- (void) __init_java_lang_String___byte_ARRAYTYPE: (XMLVMArray*) bytes;
- (void) __init_java_lang_String___byte_ARRAYTYPE_java_lang_String: (XMLVMArray*) bytes :(java_lang_String*) encoding;
- (void) __init_java_lang_String___char_ARRAYTYPE: (XMLVMArray*) chars;
- (void) __init_java_lang_String___char_ARRAYTYPE_int_int: (XMLVMArray*) chars :(int) offset :(int) count;
+ (java_lang_String*) valueOf___int: (int) i;
+ (java_lang_String*) valueOf___long: (long long) l;
+ (java_lang_String*) valueOf___float: (float) f;
+ (java_lang_String*) valueOf___double: (double) d;
+ (java_lang_String*) valueOf___java_lang_Object: (java_lang_Object*) o;
- (void) getChars___int_int_char_ARRAYTYPE_int:(int)srcBegin:(int)srcEnd:(XMLVMArray*)dst:(int)dstBegin;
- (java_lang_String*) replace___char_char:(unichar)from :(unichar)to;
- (java_lang_String*) replace___java_lang_CharSequence_java_lang_CharSequence:(java_lang_CharSequence*)from :(java_lang_CharSequence*)to;
- (java_lang_String*) replaceFirst___java_lang_String_java_lang_String:(java_lang_String*)regex :(java_lang_String*)replacement;
- (java_lang_String*) replaceAll___java_lang_String_java_lang_String :(java_lang_String*)a :(java_lang_String*)b;
- (int) matches___java_lang_String:(java_lang_String*)regex;
- (XMLVMArray*) split___java_lang_String :(java_lang_String*)s;
- (XMLVMArray*) getBytes__;
- (XMLVMArray*) toCharArray__;
- (unichar) charAt___int: (int) idx;
- (int) lastIndexOf___int: (int) ch;
- (int) contains___java_lang_CharSequence: (java_lang_CharSequence*) str;
- (int) endsWith___java_lang_String: (java_lang_String*) s;
- (java_lang_String*) substring___int_int: (int) from :(int) to;
- (java_lang_String*) substring___int: (int) from;
- (int) compareTo___java_lang_String: (java_lang_String*) str;
- (int) equals___java_lang_Object: (java_lang_Object*) o;
- (int) equalsIgnoreCase___java_lang_String: (java_lang_String*) s;
- (java_lang_String*) toLowerCase__;
- (java_lang_String*) toUpperCase__;
- (int) lastIndexOf___java_lang_String: (java_lang_String*) s;
- (int) indexOf___java_lang_String: (java_lang_String*) s;
- (int) indexOf___int: (int) ch;
- (int) startsWith___java_lang_String: (java_lang_String*) s;
- (int) length__;
- (java_lang_String*) trim__;
- (int) isEmpty__;
@end
