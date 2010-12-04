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
#import "java_io_Reader.h"
#import "java_lang_StringBuilder.h"

@interface java_io_BufferedReader : java_io_Reader {
	java_io_Reader *target;
	XMLVMArray* cb;
	int nChars;
	int nextChar;
	int markedChar;
	int readAheadLimit;
	BOOL skipLF;
	BOOL markedSkipLF;
}

//Private methods
- (void) ensureOpen;
- (void) fill;
- (int) read1: (XMLVMArray *) cbuf: (int) off: (int) len;

+ (void) appendChars: (java_lang_StringBuilder*)sb : (XMLVMArray*)src: (int)offset: (int)count;

//Protected or Package methods
- (java_lang_String*) readLine___boolean:(BOOL)ignoreLF;

//Public methods
- (void) __init_java_io_BufferedReader___java_io_Reader: (java_io_Reader *) reader;
- (void) __init_java_io_BufferedReader___java_io_Reader_int: (java_io_Reader *) reader: (int) sz;
- (int) read__;
- (int) read___char_ARRAYTYPE_int_int: (XMLVMArray *) cbuf: (int) off: (int) len;
- (bool) ready__;
- (void) mark___int: (int) readAheadLimitArg;
- (BOOL) markSupported__;
- (java_lang_String*) readLine__;
- (JAVA_LONG) skip___long: (JAVA_LONG) n;
- (void) reset__;
- (void) close__;

@end
