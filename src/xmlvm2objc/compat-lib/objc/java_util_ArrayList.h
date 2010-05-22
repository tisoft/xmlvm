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
#import "java_util_IteratorImpl.h"
#import "java_util_List.h"
#import "java_util_Collection.h"

// java.util.ArrayList
//----------------------------------------------------------------------------
typedef NSMutableArray java_util_ArrayList;
@interface NSMutableArray (cat_java_util_ArrayList) <java_util_List>

- (void) __init_java_util_ArrayList__;
- (void) __init_java_util_ArrayList___int:(int)initialCapacity;
- (void) __init_java_util_ArrayList___java_util_Collection:(java_util_Collection*)c;
- (java_util_Iterator*) iterator__;
- (int) size__;
- (BOOL) add___java_lang_Object :(java_lang_Object*) item;
- (void) add___int_java_lang_Object :(int) idx :(java_lang_Object*) item;
- (BOOL) addAll___java_util_Collection:(java_util_Collection*)c;
- (java_lang_Object*) set___int_java_lang_Object :(int) idx: (java_lang_Object*) item;
- (java_lang_Object*) get___int :(int) idx;
- (java_lang_Object*) remove___int :(int) idx;
- (BOOL) remove___java_lang_Object :(java_lang_Object*) item;
- (int) indexOf___java_lang_Object :(java_lang_Object*) item;
- (int) contains___java_lang_Object :(java_lang_Object*) item;
- (void) clear__;
- (BOOL) isEmpty__;

@end
