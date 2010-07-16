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
#import "java_util_Comparator.h"
#import "java_util_List.h"

@interface java_util_Arrays : java_lang_Object

//Private
+ (void) mergeSort:(XMLVMArray*) src: (XMLVMArray*) dest: (int) low: (int) high: (int) off;
+ (void) mergeSortWithComparator:(XMLVMArray*) src: (XMLVMArray*) dest: (int) low: (int) high: (int) off: (java_util_Comparator*)c;

//Public
+ (void) sort___int_ARRAYTYPE: (XMLVMArray*) a;
+ (void) sort___java_lang_Object_ARRAYTYPE: (XMLVMArray*) a;
+ (void) sort___java_lang_Object_ARRAYTYPE_java_util_Comparator: (XMLVMArray*) a: (java_util_Comparator*) c;
+ (java_util_List*) asList___java_lang_Object_ARRAYTYPE:(XMLVMArray*) a;
+ (XMLVMArray*) copyOf___int_ARRAYTYPE_int:(XMLVMArray*) original :(int) newLength;

@end
