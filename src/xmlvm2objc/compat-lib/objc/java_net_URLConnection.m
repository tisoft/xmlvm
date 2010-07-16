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

#import "java_net_URLConnection.h"
#import "java_io_ByteArrayInputStream.h"


// java.net.URLConnection
//----------------------------------------------------------------------------
@implementation java_net_URLConnection

- (id) initWithURL:(NSURL*) nsurl
{
	self = [super init];
	if (self) {
		self->url = [nsurl retain];
		self->request = [[NSMutableURLRequest alloc] initWithURL:nsurl];
		self->response = nil;
		self->error = nil;
		self->data = nil;
	}
	return self;
}

- (void) dealloc
{
	// TODO check why we can't do the releases. Without the comments, the application will crash.
	//[self->url release];
	[self->request release];
	//[self->response release];
	[self->error release];
	//[self->data release];
	[super dealloc];
}

- (void) setDoOutput___boolean:(int) flag
{
	// Do nothing
}

- (void) setRequestProperty___java_lang_String_java_lang_String:(java_lang_String*) key
																:(java_lang_String*) value
{
	[request addValue:value forHTTPHeaderField:key];
}

- (java_io_InputStream*) getInputStream__
{
	if (response == nil) {
		data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
	}
	if (data == nil) {
		return JAVA_NULL;
	}
	java_io_ByteArrayInputStream* stream = [[java_io_ByteArrayInputStream alloc] init];
	[stream __init_java_io_ByteArrayInputStream___byte_ARRAYTYPE:[data getBytes__]];
	return stream;
}

@end

