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

#import "java_io_Reader.h"
#import "java_io_IOException.h"
#import "java_lang_IllegalArgumentException.h"
#import "java_lang_Math.h"
#import "java_lang_NullPointerException.h"

// java.io.Reader
//----------------------------------------------------------------------------
@implementation java_io_Reader

- (id) init {
	[super init];
	self->lock = (java_lang_Object*) JAVA_NULL;
	skipBuffer = NULL;
	return self;
}

- (java_lang_Object*) getProtectedLock {
	return self->lock;
}

- (void) __init_java_io_Reader__
{
	[self __init_java_io_Reader___java_lang_Object:self];
}

- (void) __init_java_io_Reader___java_lang_Object: (java_lang_Object*) lockObject
{
	if (lockObject == (java_lang_Object*) JAVA_NULL) {
		java_lang_NullPointerException* ex = [[java_lang_NullPointerException alloc] init];
//		[ex __init_java_lang_NullPointerException___java_lang_String:@"Locking object cannot be NULL!"];
		@throw ex;
	}

	self->lock = lockObject;
	// Avoid cyclic dependency where self is never released if it references itself in self->lock. Similar logic is in "dealloc".
	// If self were to be retained again, the "retainCount" would never get to 0 and would not be deallocated.
	if (self != self->lock) {
		[self->lock retain];
	}
}

- (int) read__
{
	XMLVMArray* cb = [XMLVMArray createSingleDimensionWithType: 2 andSize:1]; //char array
	int result = -1;
	if ([self read___char_ARRAYTYPE_int_int:cb:0:1] != -1) {
		result = cb->array.b[0];
	}
	return result;
}

- (int) read___char_ARRAYTYPE: (XMLVMArray *) buffer
{
	return [self read___char_ARRAYTYPE_int_int: buffer:	0: [buffer count]];
}

- (int) read___char_ARRAYTYPE_int_int: (XMLVMArray *) buffer: (int) pos: (int) len
{
	[self xmlvmSubclassResponsibility];
}

- (bool) ready__
{
	return false;
}

- (void) mark___int: (int) readAheadLimit
{
	java_io_IOException* ex = [[java_io_IOException alloc] init];
	NSMutableString* str = [[NSMutableString alloc] initWithString:@"mark() not supported"];
	[ex __init_java_io_IOException___java_lang_String:str];
	[str release];
	@throw ex;
}


- (BOOL) markSupported__
{
	return false;
}

- (long) skip___long: (long) n
{
	if (n < 0) {
		java_lang_IllegalArgumentException* ex = [[java_lang_IllegalArgumentException alloc] init];
		NSMutableString* str = [[NSMutableString alloc] initWithString:@"skip value is negative"];
		[ex __init_java_lang_IllegalArgumentException___java_lang_String:str];
		[str release];
		@throw ex;
	}
	int maxSkipBufferSize = 8192;
	int nn = (int) [java_lang_Math min___long_long:n:(long)maxSkipBufferSize];
	long result = 0;
	@synchronized([self getProtectedLock]) {
		if (skipBuffer == NULL || [skipBuffer count] < nn) {
			skipBuffer = [XMLVMArray createSingleDimensionWithType: 2 andSize:nn];
		}
		long r = n;
		int nc = 0;
		while (r > 0 && nc != -1) {
			int len = (int)[java_lang_Math min___long_long:r:(long)nn];
			nc = [self read___char_ARRAYTYPE_int_int:skipBuffer:0:len];
			if (nc != -1) {
				r -= nc;
			}
		}
		result = n - r;
	}
	return result;
}

- (void) reset__
{
	java_io_IOException* ex = [[java_io_IOException alloc] init];
	NSMutableString* str = [[NSMutableString alloc] initWithString:@"reset() not supported"];
	[ex __init_java_io_IOException___java_lang_String:str];
	[str release];
	@throw ex;
}

- (void) close__
{
	[self xmlvmSubclassResponsibility];
}	

- (void)dealloc {
	// In order to avoid cyclic dependency, self->lock was NOT retained during initialization if it was equal to self.
	// Otherwise, the "retainCount" would never get to 0 and this "dealloc" method wouldn't even be called, causing a memory leak.
	// Since it was not retained, it should not be released either. It already has a "retainCount" of 0 right now.
	if (self != self->lock) {
		[self->lock release];
	}
	[skipBuffer release];
	[super dealloc];
}

@end
