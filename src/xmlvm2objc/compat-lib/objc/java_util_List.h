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
#import "java_util_Iterator.h"


// java.util.List
//----------------------------------------------------------------------------
@protocol java_util_List <NSObject>

- (java_util_Iterator*) iterator__;
- (int) size__;
- (BOOL) add___java_lang_Object :(java_lang_Object*) item;
- (void) add___int_java_lang_Object :(int) idx :(java_lang_Object*) item;
- (java_lang_Object*) set___int_java_lang_Object :(int) idx: (java_lang_Object*) item;
- (java_lang_Object*) set___int_java_lang_Object :(java_lang_Object*) item;
- (java_lang_Object*) get___int :(int) idx;
- (java_lang_Object*) remove___int :(int) idx;
- (BOOL) remove___java_lang_Object :(java_lang_Object*) item;
- (int) indexOf___java_lang_Object :(java_lang_Object*) item;
- (int) contains___java_lang_Object :(java_lang_Object*) item;
- (void) clear__;

@end

@interface java_util_List : java_lang_Object <java_util_List>
@end

