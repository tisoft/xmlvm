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
 
#import "java_io_ByteArrayOutputStream.h"

// java.io.ByteArrayOutputStream
//----------------------------------------------------------------------------
@implementation java_io_ByteArrayOutputStream

- (void) dealloc
{
	[buffer release];
	[super dealloc];
}

- (void) __init_java_io_ByteArrayOutputStream__
{
	buffer = [[NSMutableData alloc] initWithCapacity: DEFAULT_CAPACITY];
//	[buffer retain];
}

- (void) __init_java_io_ByteArrayOutputStream___int: (int) size
{
	buffer = [[NSMutableData alloc] initWithCapacity: size];
//	[buffer retain];
}

- (void) write___int:(int)i
{
	[buffer appendByte___int:i];	
}

- (void) writeTo___java_io_OutputStream: (java_io_OutputStream*) os
{
	XMLVMArray* data = [self toByteArray__];
	[os write___byte_ARRAYTYPE:data];
	[data release];
}

- (XMLVMArray *) toByteArray__
{
	int length = [buffer length];
	XMLVMArray* result = [XMLVMArray createSingleDimensionWithType: 3 andSize: length];	// byte array
	
	unsigned char* buf = (unsigned char *) [buffer mutableBytes];
	
	for (int i = 0; i < length; ++i) {
		result->array.b[i] = *(buf+i); 
	}

	return result;
}

- (void) reset__
{
	[buffer setLength:0];
}

@end

