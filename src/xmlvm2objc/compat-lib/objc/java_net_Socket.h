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


#import "xmlvm.h"
#import "java_lang_String.h"
#import "java_io_InputStream.h"
#import "java_io_OutputStream.h"


// java.net.Socket
//----------------------------------------------------------------------------
@interface java_net_Socket : java_lang_Object {
	int sock;
}

- (id) initWithSocket:(int)socket;

- (void) __init_java_net_Socket__;
- (void) __init_java_net_Socket___java_lang_String_int: (java_lang_String*)host: (int) port;

- (java_io_InputStream*) getInputStream__;
- (java_io_OutputStream*) getOutputStream__;
- (void) close__;

@end


@interface java_net_SocketInputStreamImpl : java_io_InputStream {
	int sock;
	BOOL eof;
}

- (id) initWithSocket:(int)socket;

- (void) dealloc;

@end


@interface java_net_SocketOutputStreamImpl : java_io_OutputStream {
	int sock;
}

- (id) initWithSocket:(int)socket;

- (void) dealloc;

@end
