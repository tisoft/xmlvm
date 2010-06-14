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

#import "java_io_InputStreamReader.h"
#import "java_lang_StringBuffer.h"

// java.io.InputStreamReader
//----------------------------------------------------------------------------
@implementation java_io_InputStreamReader

static const char LF = '\n';
static const char CR = '\r';

- (void) __init_java_io_InputStreamReader___java_io_InputStream: (java_io_InputStream*) input
{
	[self __init_java_io_InputStreamReader___java_io_InputStream_java_lang_String: input : @"ASCII"];
}

- (void) __init_java_io_InputStreamReader___java_io_InputStream_java_lang_String: (java_io_InputStream*) input: (java_lang_String*) enc
{
	target = input;
	encoding = enc;
	[target retain];
	[encoding retain];
}

- (int) read__
{
	return [target read__]; //TODO: works only for ASCII
}
	 
- (void) dealloc
{
	[target release];
	[encoding release];
	[super dealloc];
}

- (void) close__
{
	[target close__];
}

- (java_lang_String*) readLine__
{
	java_lang_StringBuffer* b = [[java_lang_StringBuffer alloc] init];
	int i;
	while ((i = [self read__]) != -1 && ((char) i) != LF) {
		if (i < 0) {
			i += 256;
		}
		[b append___char: (char) i];
	}
	if ([b length] == 0 && i == -1) {
		[b release];
		return JAVA_NULL;
	}
	java_lang_String* result = [b toString__];
	[b release];
	int j = [result indexOf___int: CR];
	if (j > -1) {
		return [[result substring___int_int: 0: j] retain];
	}
	return [result retain];
}

@end

