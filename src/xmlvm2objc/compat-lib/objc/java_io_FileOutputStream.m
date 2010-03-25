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

#import "java_io_FileOutputStream.h"
#import "java_io_FileNotFoundException.h"

// java.io.FileOutputStream
//----------------------------------------------------------------------------
@implementation java_io_FileOutputStream 

- (void) dealloc
{
	if (fd != nil) {
		[self close__];
	}
	[super dealloc];
}

- (void) __init_java_io_FileOutputStream___java_io_File: (java_io_File*) f
{
	[self __init_java_io_FileOutputStream___java_io_File_boolean: f : FALSE];
}

- (void) __init_java_io_FileOutputStream___java_io_File_boolean: (java_io_File*) f : (bool) append
{
	if (![f exists__]) {
		[f createNewFile__];
	}
	self->fdImpl = [NSFileHandle fileHandleForWritingAtPath: [f getCanonicalPath__]];
	if (fdImpl == nil) {
		java_io_FileNotFoundException* ex = [[java_io_FileNotFoundException alloc] init];
		@throw ex;
	}
	[self->fdImpl retain];
	self->fd = [[java_io_FileDescriptor alloc] init];
	[fd __init_java_io_FileDescriptor___NSFileHandle: self->fdImpl];
	
	if (append)	{
		[self->fdImpl seekToEndOfFile];
	}
}

- (void) __init_java_io_FileOutputStream___java_lang_String: (java_lang_String*) f
{
	java_io_File *fi = [[java_io_File alloc] init];
	[fi __init_java_io_File___java_lang_String: f];
	[self __init_java_io_FileOutputStream___java_io_File_boolean: fi : FALSE];
	[fi release];
}

- (void) write___int: (int) c
{
	unsigned char b = (unsigned char) c & 0xFF;
	NSData *data = [NSData dataWithBytes: &b  length : 1];
	[self->fdImpl writeData: data];
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

- (void) flush__
{
	[self->fdImpl synchronizeFile];
}

@end
