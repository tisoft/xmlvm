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

#import "java_lang_System.h"
#import "java_lang_RuntimeException.h"


@interface ConsoleOutputStream : java_io_OutputStream {
@private NSMutableString* log;
}
- (id) init;
- (void) dealloc;
- (void) write___int: (int) b;
@end

@implementation ConsoleOutputStream

- (id) init
{
	[super init];
	log = [[NSMutableString alloc] init];
	return self;
}

- (void) dealloc
{
	[log release];
	[super dealloc];
}

- (void) write___int: (int) b
{
	if (b == '\n') {
		NSLog(log);
		[log setString:@""];
	}
	else {
	    [log appendString: [NSString stringWithFormat:@"%c", b]];
	}
}

@end


// java.lang.System
//----------------------------------------------------------------------------
java_io_PrintStream* _STATIC_java_lang_System_out;

@implementation java_lang_System;


/*
 TODO - this currently broken as while it returns a consistently changing 
 value it doesn't return an accurate time according to the Java spec for this method.
 Problems lie in the long representation on the 32 bit target architecture.
 */
+ (long) currentTimeMillis__
{
    double result = trunc(([NSDate timeIntervalSinceReferenceDate] - 268300000) * 1000);
	result -= 2168640000;
    return (int) result;
}

+ (void) initialize
{
	ConsoleOutputStream* console = [[ConsoleOutputStream alloc] init];
    java_io_PrintStream* v = [[java_io_PrintStream alloc] init];
	[v __init_java_io_PrintStream___java_io_OutputStream:console];
	[console release];
    [java_lang_System _PUT_out: v];
}

+ (java_io_PrintStream*) _GET_out
{
    return _STATIC_java_lang_System_out;
}


+ (void) _PUT_out: (java_io_PrintStream*) v
{
    _STATIC_java_lang_System_out = v;
}

+ (void) setOut___java_io_PrintStream: (java_io_PrintStream*) ps
{
	[ps retain];
    [_STATIC_java_lang_System_out release];
	[java_lang_System _PUT_out:ps];
}

/*
 TODO - This currently does nothing with the properties passed-in, it might be worthwhile
 to actually store the values and provide other related methods, like getProperty. 
 The function was only added to allow Java code that sets properties required by the OpenGL 
 support in the xmlvm iPhone Simulator to cross-compile without modification.
 */

+ (java_lang_String *) setProperty___java_lang_String_java_lang_String: (java_lang_String *) s1: (java_lang_String *)s2
{
    return NULL;
}

+ (void) arraycopy___java_lang_Object_int_java_lang_Object_int_int
            :(java_lang_Object*) src
            :(int) srcPos
            :(java_lang_Object*) dest
            :(int) destPos
            :(int) length
{
	if ([src class] != [XMLVMArray class] ||
		[dest class] != [XMLVMArray class] ||
		((XMLVMArray*) src)->type != ((XMLVMArray*) dest)->type) {
		// TODO need to do much more thorough error checking
		java_lang_RuntimeException* ex = [[java_lang_RuntimeException alloc] init];
		@throw ex;
	}
	if (length == 0) {
		// Nothing to do
		return;
	}
	XMLVMArray* srcArr = (XMLVMArray*) src;
	XMLVMArray* destArr = (XMLVMArray*) dest;
	int d = 1;
	if (srcArr == destArr) {
		if (srcPos == destPos) {
			// Nothing to do
			return;
		}
		if (srcPos + length - 1 > destPos) {
			// We have to copy backwards to ensure we don't overwrite ourselves while copying
			srcPos += length - 1;
			destPos += length - 1;
			d = -1;
		}
	}
	if (srcArr->type == 0) {
		// We copy object references
		for (int i = 0; i < length; i++) {
			id o = [srcArr objectAtIndex:srcPos];
			[destArr replaceObjectAtIndex:destPos withObject:o];
			srcPos += d;
			destPos += d;
		}
	}
	else {
		// We copy a primitive type
		for (int i = 0; i < length; i++) {
			destArr->array.l[destPos] = srcArr->array.l[srcPos];
			srcPos += d;
			destPos += d;
		}
	}
}

+ (void) gc__
{
	// Do nothing
}

+ (int) identityHashCode___java_lang_Object: (java_lang_Object*) o
{
	return (int) o;
}

@end
