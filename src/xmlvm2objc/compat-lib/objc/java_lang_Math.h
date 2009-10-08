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

// java.lang.Math
//----------------------------------------------------------------------------
@interface java_lang_Math : java_lang_Object

+ (double) random;
+ (double) sqrt___double: (double) x;
+ (double) asin___double: (double) x;
+ (double) sin___double: (double) a;
+ (double) cos___double: (double) a;
+ (double) tan___double: (double) a;
+ (double) atan2___double_double: (double) y :(double) x;
+ (int) abs___int: (int) i;
+ (float) abs___float: (float) f;
+ (float) max___float_float :(float) x :(float) y;
+ (int) max___int_int :(int) x :(int) y;
+ (int) min___int_int :(int) x :(int) y;
@end

