/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_util_Iterator.h"
#import "java_util_Collection.h"

// java.util.List
//----------------------------------------------------------------------------
@protocol java_util_List <java_util_Collection>

- (java_util_Iterator*) iterator__;
- (int) size__;
- (BOOL) add___java_lang_Object :(java_lang_Object*) item;
- (void) add___int_java_lang_Object :(int) idx :(java_lang_Object*) item;
- (BOOL) addAll___java_util_Collection: (java_util_Collection*) c;
- (java_lang_Object*) set___int_java_lang_Object :(int) idx: (java_lang_Object*) item;
- (java_lang_Object*) get___int :(int) idx;
- (java_lang_Object*) remove___int :(int) idx;
- (BOOL) remove___java_lang_Object :(java_lang_Object*) item;
- (int) indexOf___java_lang_Object :(java_lang_Object*) item;
- (int) contains___java_lang_Object :(java_lang_Object*) item;
- (void) clear__;
- (XMLVMArray*) toArray__;
- (XMLVMArray*) toArray___java_lang_Object_ARRAYTYPE;

@end

@interface java_util_List : java_lang_Object <java_util_List>
@end

