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

#import "org_xmlvm_iphone_NSURLConnectionDelegate.h"


// NSURLConnectionDelegate
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_NSURLConnectionDelegate

- (void) __init_org_xmlvm_iphone_NSURLConnectionDelegate__
{
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
	[self connectionDidReceiveData___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSData: connection :data];
}

- (void) connectionDidFinishLoading :(NSURLConnection*) connection
{
	[self connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection: connection];
}

- (void) connection: (NSURLConnection*) connection didFailWithError :(NSError*) error
{
	[self connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError: connection :error];
}

- (void) connectionDidReceiveData___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSData :(org_xmlvm_iphone_NSURLConnection*)connection :(org_xmlvm_iphone_NSData*)data
{
	// Do nothing
}

- (void) connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection :(org_xmlvm_iphone_NSURLConnection*) connection
{
	// Do nothing
}

- (void) connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_NSURLConnection*) connection :(org_xmlvm_iphone_NSError*) error
{
	// Do nothing
}

@end
