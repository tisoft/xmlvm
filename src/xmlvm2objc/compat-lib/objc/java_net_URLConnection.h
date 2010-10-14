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
#import "java_lang_Object.h"
#import "java_io_InputStream.h"
#import "java_io_OutputStream.h"

@class java_io_ByteArrayOutputStream;


@interface java_net_URLConnection : java_lang_Object {
	NSURL* url;
	NSMutableURLRequest* request;
	java_io_ByteArrayOutputStream* body;
	NSHTTPURLResponse* response;
	NSError* error;
	NSData* data; 
}

- (id) initWithURL:(NSURL*) url;
- (void) dealloc;
- (void) setDoOutput___boolean:(int) flag;
- (void) setDoInput___boolean:(int) flag;
- (void) setRequestProperty___java_lang_String_java_lang_String:(java_lang_String*) key
															   :(java_lang_String*) value;
- (void) addRequestProperty___java_lang_String_java_lang_String:(java_lang_String*) key
															   :(java_lang_String*) value;
- (java_io_InputStream*) getInputStream__;
- (java_lang_String*) getHeaderField___java_lang_String: (java_lang_String*) field;
- (void) xmlvmDoRequest;

@end
