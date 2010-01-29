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

#import "java_io_FileInputStream.h"
#import "java_io_FileNotFoundException.h"


@implementation java_io_FileInputStream

- (void) __init_java_io_FileInputStream___java_lang_String :(java_lang_String*) path
{
	self->fdImpl = [NSFileHandle fileHandleForReadingAtPath:path];
	if (fdImpl == nil) {
		java_io_FileNotFoundException* ex = [[java_io_FileNotFoundException alloc] init];
		@throw ex;
	}
	[self->fdImpl retain];
	self->fd = [[java_io_FileDescriptor alloc] init];
	[fd __init_java_io_FileDescriptor___NSFileHandle: self->fdImpl];
}

- (void) __init_java_io_FileInputStream___java_io_FileDescriptor :(java_io_FileDescriptor*) fdpar
{
	self->fd = fdpar;
	self->fdImpl = [self->fd getFileHandle];
	[self->fd retain];
	[self->fdImpl retain];
}

- (void) __init_java_io_FileInputStream___java_io_File: (java_io_File*) f 
{
	[self __init_java_io_FileInputStream___java_lang_String: [[f getCanonicalPath__] autorelease]];
}

- (void) dealloc
{
	if (self->fd != nil) {
		[self close__];
	}
	[super dealloc];
}

- (int) read__
{
	NSData *data = [self->fdImpl readDataOfLength: 1];
	if (data == nil) {
		return -1;
	}
	char * ptr = (char *) [data bytes];
	if (ptr == NULL) {
		return -1;
	}	
	int i = ptr[0];
	return i;
}

- (long) skip___long: (long) n
{
	long initialPos = [self->fdImpl offsetInFile];
	long newPos = n+initialPos;
	[self->fdImpl seekToFileOffset: newPos];
	return [self->fdImpl offsetInFile] - initialPos;
}


- (void) close__
{
	if (self->fd == nil) {
		return;
	}
	[self->fd invalidate];
	[self->fd release];
	[self->fdImpl closeFile];
	[self->fdImpl release];
	self->fd = nil;
	self->fdImpl = nil;
}

- (java_io_FileDescriptor*) getFD__
{
	[self->fd retain];
	return self->fd;
}

- (bool) markSupported__
{
	return true;
}

- (void) mark___int: (int) max
{
	marked = [self->fdImpl offsetInFile];
}

- (void) mark___long: (long) max
{
	marked = [self->fdImpl offsetInFile];
}

- (void) reset__
{
	[self->fdImpl seekToFileOffset: marked];
}

- (int) read___byte_ARRAYTYPE :(XMLVMArray*)buf
{
	int len = [buf count];
	NSData *data = [self->fdImpl readDataOfLength: len];
	if (data == nil) {
		return -1;
	}
	char * ptr = (char *) [data bytes];
	if (ptr == NULL) {
		return -1;
	} else {
		for (int i = 0; i < [data length]; i++) {
			buf->array.i[i] = ptr[i];
		}
		return [data length];
	}
}	

- (int) read___byte_ARRAYTYPE_int_int :(XMLVMArray*)buf :(int)offs :(int)len
{
	NSData *data = [self->fdImpl readDataOfLength: len];
	if (data == nil) {
		return -1;
	}
	char * ptr = (char *) [data bytes];
	if (ptr == NULL) {
		return -1;
	}	else {
		for (int i = 0; i < [data length]; i++) {
			buf->array.i[offs+i] = ptr[i];
		}
		return [data length];
	}
}	

@end
