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

#import "java_io_OutputStreamWriter.h"

// java.io.OutputStreamWriter
//----------------------------------------------------------------------------
@implementation java_io_OutputStreamWriter

- (id) init
{
	[super init];
	outputStream = (java_io_OutputStream*) JAVA_NULL;
	return self;
}

- (id) initWithOutputStream:(java_io_OutputStream*)outStream
{
	[super init];
	[self __init_java_io_OutputStreamWriter___java_io_OutputStream:outStream];
	return self;
}

- (void) __init_java_io_OutputStreamWriter___java_io_OutputStream: (java_io_OutputStream*)outStream
{
	[outStream retain];
	self->outputStream = outStream;
	[super __init_java_io_Writer__java_lang_Object:outStream];
}

- (void) write___java_lang_String_int_int: (java_lang_String*)str: (int)off: (int)len
{
	[super write___java_lang_String_int_int:str:off:len];
}

- (void) write___char_ARRAYTYPE_int_int: (XMLVMArray *) cbuf: (int) off: (int) len
{
	[outputStream write___byte_ARRAYTYPE_int_int:cbuf:off:len];
}

- (void) write___int: (int) c
{
	[super write___int:c];
}

- (void) close__
{
	//StreamEncoder close
	[outputStream close__];
}

- (void) flush__
{
	//StreamEncoder flush
	[outputStream flush__];
}

- (void)dealloc
{
	[outputStream release];
	[super dealloc];
}

@end
