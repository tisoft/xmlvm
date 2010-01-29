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

#import "java_io_ByteArrayInputStream.h"

@implementation java_io_ByteArrayInputStream;

- (void) __init_java_io_ByteArrayInputStream___byte_ARRAYTYPE_int_int :(XMLVMArray*)buf :(int)from :(int)len
{
	self->length = len;
	self->buffer = malloc(sizeof(char)*len);

	int src=from; int dst=0;
	while (dst<len) {
		buffer[dst++] = buf->array.i[src++];
	}
	self->pos = 0;
	self->marked = 0;
}

- (int) read__
{
	if (pos>=length) {
		return -1;
	} else {
		return buffer[pos++];
	}
}

- (void) dealloc
{
	free(buffer);
	[super dealloc];
}

- (int) available__
{
  return length - pos;
}

- (long) skip___long: (long) shift
{
  pos += shift;
  if (pos >= length) {
  	pos = length;
  }
  return pos;
}

- (void) mark___long: (long) max
{
  marked = pos;
}

- (void) mark___int: (int) max
{
  marked = pos;
}


- (void) reset__
{
  pos = marked;
}

- (int) read___byte_ARRAYTYPE :(XMLVMArray*)buf
{
  if (pos >= length) {
  	return -1;
  }
  int len = [buf count];
  int c = 0;
  int p2 = pos;
  while (p2 < length && c < len) {
    buf->array.i[c++] = buffer[p2++];
  }
  pos = p2;
  return c;
}

- (int) read___byte_ARRAYTYPE_int_int :(XMLVMArray*)buf :(int)offs :(int)len
{
  if (pos >= length) {
  	return -1;
  }
  int c = 0;
  int p2 = pos;
  while (p2 < length && c < len) {
    buf->array.i[offs+(c++)] = buffer[p2++];
  }
  pos = p2;
  return c;
}

// duplicate of read___byte_ARRAYTYPE_int_int - needed?
- (int) read___char_ARRAYTYPE_int_int: (XMLVMArray *) buf: (int) offs: (int) len
{
  if (pos >= length) {
  	return -1;
  }
  int c = 0;
  int p2 = pos;
  while (p2 < length && c < len) {
    buf->array.i[offs+(c++)] = buffer[p2++];
  }
  pos = p2;
  return c;
}

- (java_lang_String*) readLine__
{
	return [NSNull null];
}

- (void) close__
{
}

@end
