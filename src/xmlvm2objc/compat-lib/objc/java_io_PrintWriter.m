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

#import "java_io_PrintWriter.h"
#import "java_io_BufferedWriter.h"
#import "java_io_OutputStreamWriter.h"
#import "java_io_IOException.h"

// java.io.PrintWriter
//----------------------------------------------------------------------------
@implementation java_io_PrintWriter

- (id) init
{
	[super init];
	outWriter = (java_io_Writer*) JAVA_NULL;
	return self;
}

- (void) __init_java_io_PrintWriter___java_io_OutputStream: (java_io_OutputStream*)outStream
{
	[self __init_java_io_PrintWriter___java_io_OutputStream_boolean:outStream:0];
}

- (void) __init_java_io_PrintWriter___java_io_OutputStream_boolean: (java_io_OutputStream*)outStream: (int)autoFlushBoolean
{
	java_io_OutputStreamWriter* osw = [[java_io_OutputStreamWriter alloc] initWithOutputStream:outStream];
	java_io_BufferedWriter* bw = [[java_io_BufferedWriter alloc] initWithWriter:osw];
	[self __init_java_io_PrintWriter___java_io_Writer_boolean:bw:autoFlushBoolean];
	[bw release];
	[osw release];
}

- (void) __init_java_io_PrintWriter___java_io_Writer: (java_io_Writer*)writer
{
	[self __init_java_io_PrintWriter___java_io_Writer_boolean:writer:0];
}

- (void) __init_java_io_PrintWriter___java_io_Writer_boolean: (java_io_Writer*)writer: (int)autoFlushBoolean
{
	[super __init_java_io_Writer__java_lang_Object:writer];

	[writer retain];
	self->outWriter = writer;
	self->autoFlush = autoFlushBoolean;
}

- (void) ensureOpen
{
	if (outWriter == (java_io_Writer*) JAVA_NULL) {
		java_io_IOException* ex = [[java_io_IOException alloc] init];
		NSMutableString* str = [[NSMutableString alloc] initWithString:@"Stream closed!"];
		[ex __init_java_io_IOException___java_lang_String:str];
		[str release];
		@throw ex;
	}
}

- (void) print___java_lang_String: (java_lang_String*)s
{
	if (s == (java_lang_String*) JAVA_NULL) {
		NSMutableString* str = [[NSMutableString alloc] initWithString:@"null"];
		[self write___java_lang_String:str];
		[str release];
	} else {
		[self write___java_lang_String:s];
	}
}

- (void) println___java_lang_String: (java_lang_String*)x
{
	@synchronized([self getProtectedLock]) {
		[self print___java_lang_String:x];
		[self newLine__];
	}
}

- (void) println__
{
	[self newLine__];
}

- (void) newLine__
{
	@try {
		@synchronized([self getProtectedLock]) {
			[self ensureOpen];
			NSMutableString* str = [[NSMutableString alloc] initWithString:@"\n"];
			[outWriter write___java_lang_String:str];
			[str release];
			if (self->autoFlush == 1) {
				[outWriter flush__];
			}
		}
	}
//TODO
//	@catch (java_io_InterruptedIOException * e) {
//		Interrupt current thread
//	}
	@catch (java_io_IOException * e) {
		trouble = 1;
	}
}

- (void) close__
{
	@try {
		@synchronized([self getProtectedLock]) {
			if (outWriter == (java_io_Writer*) JAVA_NULL) {
				return;
			}
			[outWriter close__];
			[outWriter release];
			outWriter = (java_io_Writer*) JAVA_NULL;
		}
	}
	@catch (java_io_IOException * e) {
		trouble = 1;
	}
}

- (void) flush__
{
	@try {
		@synchronized([self getProtectedLock]) {
			[self ensureOpen];
			[outWriter flush__];
		}
	}
	@catch (java_io_IOException * e) {
		trouble = 1;
	}
}

- (void) write___char_ARRAYTYPE: (XMLVMArray *) cbuf
{
	[self write___char_ARRAYTYPE_int_int:cbuf:0:[cbuf count]];
}

- (void) write___char_ARRAYTYPE_int_int: (XMLVMArray *) cbuf: (int) off: (int) len
{
	@try {
		@synchronized([self getProtectedLock]) {
			[self ensureOpen];
			[outWriter write___char_ARRAYTYPE_int_int:cbuf:off:len];
		}
	}
//TODO
//	@catch (java_io_InterruptedIOException * e) {
//		Interrupt current thread
//	}
	@catch (java_io_IOException * e) {
		trouble = 1;
	}
}

- (void) write___int: (int) c
{
	@try {
		@synchronized([self getProtectedLock]) {
			[self ensureOpen];
			[outWriter write___int:c];
		}
	}
//TODO
//	@catch (java_io_InterruptedIOException * e) {
//		Interrupt current thread
//	}
	@catch (java_io_IOException * e) {
		trouble = 1;
	}
}

- (void) write___java_lang_String: (java_lang_String*) str
{
	[self write___java_lang_String_int_int:str:0:[str length__]];
}

- (void) write___java_lang_String_int_int: (java_lang_String*) str: (int) off: (int) len
{
	@try {
		@synchronized([self getProtectedLock]) {
			[self ensureOpen];
			[outWriter write___java_lang_String_int_int:str:off:len];
		}
	}
//TODO
//	@catch (java_io_InterruptedIOException * e) {
//		Interrupt current thread
//	}
	@catch (java_io_IOException * e) {
		trouble = 1;
	}
}

- (java_io_PrintWriter*) append___char: (int) c
{
	[self write___int:c];
	[self retain];
	return self;
}

- (void) print___boolean: (int) b
{
	NSMutableString* str = NULL;
	if (b == 1) {
		str = [[NSMutableString alloc] initWithString:@"true"];
	} else {
		str = [[NSMutableString alloc] initWithString:@"false"];
	}
	[self write___java_lang_String:str];
	[str release];
}

- (void) println___boolean: (int) x
{
	@synchronized([self getProtectedLock]) {
		[self print___boolean:x];
		[self println__];
	}
}

- (void) print___char: (int) c
{
	[self write___int:c];
}

- (void) println___char: (int) x
{
	@synchronized([self getProtectedLock]) {
		[self print___char:x];
		[self println__];
	}
}

- (void) print___char_ARRAYTYPE: (XMLVMArray *) s
{
	[self write___char_ARRAYTYPE:s];
}

- (void) println___char_ARRAYTYPE: (XMLVMArray *) x
{
	@synchronized([self getProtectedLock]) {
		[self print___char_ARRAYTYPE:x];
		[self println__];
	}
}

- (void) print___double: (double) d
{
	java_lang_String* str = [java_lang_String valueOf___double:d];
	[self write___java_lang_String:str];
	[str release];
}

- (void) println___double: (double) x
{
	@synchronized([self getProtectedLock]) {
		[self print___double:x];
		[self println__];
	}
}

- (void) print___float: (float) f
{
	java_lang_String* str = [java_lang_String valueOf___float:f];
	[self write___java_lang_String:str];
	[str release];
}

- (void) println___float: (float) x
{
	@synchronized([self getProtectedLock]) {
		[self print___float:x];
		[self println__];
	}
}

- (void) print___int: (int) i
{
	java_lang_String* str = [java_lang_String valueOf___int:i];
	[self write___java_lang_String:str];
	[str release];
}

- (void) println___int: (int) x
{
	@synchronized([self getProtectedLock]) {
		[self print___int:x];
		[self println__];
	}
}

- (void) print___long: (long) l
{
	java_lang_String* str = [java_lang_String valueOf___long:l];
	[self write___java_lang_String:str];
	[str release];
}

- (void) println___long: (long) x
{
	@synchronized([self getProtectedLock]) {
		[self print___long:x];
		[self println__];
	}
}

- (void)dealloc
{
	[outWriter release];
	[super dealloc];
}

@end
