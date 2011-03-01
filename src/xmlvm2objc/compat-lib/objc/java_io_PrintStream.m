/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
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
	if (str==JAVA_NULL)
		str=@"null";
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
	[self writeStringLn: (i == NO) ? @"false" : @"true"];
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

- (void) println___java_lang_Object: (java_lang_Object*) o
{
	[self print___java_lang_Object:o];
	[self println__];
}

- (void) println___byte: (char) b
{
	[self writeStringLn:[NSString stringWithFormat:@"%d", b]];
}

- (void) println___short: (short) s
{
	[self writeStringLn:[NSString stringWithFormat:@"%hi", s]];
}

- (void) println___long: (JAVA_LONG) l
{
	[self writeStringLn:[NSString stringWithFormat:@"%qi", l]];
}

- (void) println__
{
	[self writeString:@"\n"];
}

- (void) print___boolean: (int) i
{
	[self writeString: ((i == NO) ? @"false" : @"true")];
}

- (void) print___int: (int) i
{
    [self writeString:[NSString stringWithFormat:@"%d", i]];
}


- (void) print___float: (float) f
{
	[self writeString:[NSString stringWithFormat:@"%f", f]];
}


- (void) print___double: (double) d
{
    [self writeString:[NSString stringWithFormat:@"%lf", d]];
}


- (void) print___java_lang_String: (NSString*) s
{
	[self writeString:s];
}

- (void) print___java_lang_Object: (java_lang_Object*) o
{
	if (o==JAVA_NULL)
		[self writeString:(java_lang_String*)o];
	else {
		NSString* s= [o toString__];
		[self writeString:s];
		[s release];
	}
}

- (void) print___byte: (char) b
{
	[self writeString:[NSString stringWithFormat:@"%d", b]];
}

- (void) print___short: (short) s
{
	[self writeString:[NSString stringWithFormat:@"%hi", s]];
}

- (void) print___long: (JAVA_LONG) l
{
	[self writeString:[NSString stringWithFormat:@"%qi", l]];
}

@end
