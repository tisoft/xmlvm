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

#import "java_io_OutputStream.h"
#import "java_lang_IllegalArgumentException.h"

// java.io.OutputStream
//----------------------------------------------------------------------------
@implementation java_io_OutputStream

- (void) __init_java_io_OutputStream__
{
}

- (void) write___int: (int) i
{
	[self xmlvmSubclassResponsibility];
}

- (void) write___byte_ARRAYTYPE: (XMLVMArray *) data
{
	int arrlen = [data count];
	[self write___byte_ARRAYTYPE_int_int:data :0 :arrlen];
}

- (void) write___byte_ARRAYTYPE_int_int: (XMLVMArray *) data: (int) pos: (int) len
{
	int arrlen = [data count];
	if (arrlen < pos + len) {
		id exc_id = [[java_lang_IllegalArgumentException alloc] init];
		java_lang_IllegalArgumentException *exc = (java_lang_IllegalArgumentException*) exc_id;
		[exc __init_java_lang_IllegalArgumentException__];
		@throw exc_id;
	}
	for (int i = pos; i < len + pos; ++i) {
		int c = data->array.b[i];
		[self write___int: c];
	}
}

- (void) flush__
{
}

- (void) close__
{
}

@end

