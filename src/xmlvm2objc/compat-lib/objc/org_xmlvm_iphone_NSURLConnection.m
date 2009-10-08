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


#import "org_xmlvm_iphone_NSURLConnection.h"


// NSURLConnection
//----------------------------------------------------------------------------
@implementation NSURLConnection (cat_NSURLConnection)

+ (org_xmlvm_iphone_NSURLConnection*) connectionWithRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSURLConnectionDelegate
               :(org_xmlvm_iphone_NSMutableURLRequest*) req
               :(org_xmlvm_iphone_NSURLConnectionDelegate*) delegate
{
	// TODO better reference counting for the delegate
	[delegate retain];
	return [NSURLConnection connectionWithRequest:req delegate:delegate];
}

+ (NSData*) sendSynchronousRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSHTTPURLResponseHolder_org_xmlvm_iphone_NSErrorHolder
               :(org_xmlvm_iphone_NSMutableURLRequest*) req
               :(org_xmlvm_iphone_NSHTTPURLResponseHolder*) respHolder
               :(org_xmlvm_iphone_NSErrorHolder*) errHolder
{
    NSHTTPURLResponse* resp;
    NSError* err;
    NSData* data;
    data = [NSURLConnection sendSynchronousRequest:req
                            returningResponse:&resp
                            error:&err];
    // TODO need to wrap resp and err in Holder classes
    return data;
}
@end
