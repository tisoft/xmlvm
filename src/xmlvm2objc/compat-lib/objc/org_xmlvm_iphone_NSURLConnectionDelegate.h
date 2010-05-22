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
#import "org_xmlvm_iphone_NSError.h"
#import "org_xmlvm_iphone_NSErrorHolder.h"
#import "org_xmlvm_iphone_NSData.h"


@class org_xmlvm_iphone_NSURLConnection;


// NSURLConnectionDelegate
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_NSURLConnectionDelegate : java_lang_Object

- (void) __init_org_xmlvm_iphone_NSURLConnectionDelegate__;

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
- (void) connectionDidFinishLoading :(NSURLConnection*) connection;
- (void) connection: (NSURLConnection*) connection didFailWithError :(NSError*) error;

- (void) connectionDidReceiveData___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSData :(org_xmlvm_iphone_NSURLConnection*)connection :(org_xmlvm_iphone_NSData*)data;
- (void) connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection :(org_xmlvm_iphone_NSURLConnection*) connection;
- (void) connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_NSURLConnection*) connection :(org_xmlvm_iphone_NSError*) error;
@end
