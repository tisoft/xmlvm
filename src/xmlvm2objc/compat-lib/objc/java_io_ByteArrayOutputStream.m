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


- (id) init
{
	if (self = [super init]) {
		buffer = [NSMutableData dataWithCapacity: DEFAULT_CAPACITY];
		[buffer retain];
	}
	return self;
}

- (void) dealloc
{
	[buffer release];
	[super dealloc];
}

- (void) __init_java_io_ByteArrayOutputStream__
{
}

- (void) write___int:(int)i
{
	[buffer appendByte___int:i];	
}

- (XMLVMArray *) toByteArray__
{
	int length = [buffer length];
	XMLVMArray *result = [XMLVMArray createSingleDimensionWithType: 3 andSize: length];	// byte array
	
	unsigned char * buf = (unsigned char *) [buffer mutableBytes];
	
	for (int i = 0; i < length; ++i) {
		result->array.i[i] = *(buf+i); 
	}
	[result retain];
	return result;
}

@end

