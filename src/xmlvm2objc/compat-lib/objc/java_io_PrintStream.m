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

#import "java_io_PrintStream.h"

// java.io.PrintStream
//----------------------------------------------------------------------------
@implementation java_io_PrintStream;

- (void) __init_java_io_PrintStream___java_io_OutputStream: (java_io_OutputStream*) s
{
	self->os = [s retain];
}

- (void) dealloc
{
	[self->os release];
	[super dealloc];
}

- (void) writeString: (NSString*) str
{
	for (int i = 0; i < [str length]; i++) {
		[self->os write___int:[str characterAtIndex:i]];
	}
}

- (void) writeStringLn: (NSString*) str
{
	[self writeString:str];
	[self writeString:@"\n"];
}

- (void) println___boolean: (int) i
{
	[self writeString: (i == NO) ? @"false" : @"true"];
}

- (void) println___int: (int) i
{
    [self writeStringLn:[NSString stringWithFormat:@"%d", i]];
}


- (void) println___float: (float) f
{
	[self writeStringLn:[NSString stringWithFormat:@"%f", f]];
}


- (void) println___double: (double) d
{
    [self writeStringLn:[NSString stringWithFormat:@"%lf", d]];
}


- (void) println___java_lang_String: (NSString*) s
{
	[self writeStringLn:s];
}

- (void) println__
{
	[self writeString:@"\n"];
}

- (void) print___java_lang_Object: (java_lang_Object*) o
{
	java_lang_String* s = [o toString__];
	[self writeString:s];
	[s release];
}

@end

