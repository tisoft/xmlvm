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

#import "java_io_InputStream.h"

// java.io.InputStream
//----------------------------------------------------------------------------
@implementation java_io_InputStream

- (void) __init_java_io_InputStream__
{	
}

- (int) available__
{
	[self xmlvmSubclassResponsibility];
	return 0;
}

- (bool) markSupported__
{
	return false;
}

- (void) mark___int: (int) readlimit
{
}

- (void) mark___long: (long) readlimit
{
}

- (int) read__
{
	[self xmlvmSubclassResponsibility];
	return -1;
}

- (int) read___byte_ARRAYTYPE: (XMLVMArray *) buffer
{
	return [self read___byte_ARRAYTYPE_int_int: buffer : 0 : [buffer count]];
}

- (int) read___byte_ARRAYTYPE_int_int: (XMLVMArray *) buffer: (int) pos: (int) len 
{
	int i = 0;
	for (i = 0; i < len; ++i) {
		int c = [self read__];
		if (c == -1) {
			break;
		}
		buffer->array.b[pos + i] = c;
	}
	return i > 0 ? i : -1;
}

- (void) close__
{
}

- (void) reset__
{
}

- (long) skip___long: (long) n
{
	return 0;
}


@end
