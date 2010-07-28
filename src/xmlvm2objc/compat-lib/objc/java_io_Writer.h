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
#import "java_lang_String.h"

@interface java_io_Writer : java_lang_Object {
	java_lang_Object* lock;
	XMLVMArray* writeBuffer;
}

- (java_lang_Object*) getProtectedLock;

- (void) __init_java_io_Writer__;
- (void) __init_java_io_Writer__java_lang_Object: (java_lang_Object*)lockObject;

- (void) close__;
- (void) flush__;
- (void) write___char_ARRAYTYPE: (XMLVMArray *) cbuf;
- (void) write___char_ARRAYTYPE_int_int: (XMLVMArray *) cbuf: (int) off: (int) len;
- (void) write___int: (int) c;
- (void) write___java_lang_String: (java_lang_String*) str;
- (void) write___java_lang_String_int_int: (java_lang_String*) str: (int) off: (int) len;

@end
