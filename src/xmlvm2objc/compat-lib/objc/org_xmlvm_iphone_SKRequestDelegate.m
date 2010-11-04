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

#import "org_xmlvm_iphone_NSError.h"

/** @author teras */

#import "org_xmlvm_iphone_SKRequestDelegate.h"
#import "org_xmlvm_iphone_NSObject.h"


@implementation org_xmlvm_iphone_SKRequestDelegate

- (void) __init_org_xmlvm_iphone_SKRequestDelegate__
{
}

- (void)request:(SKRequest *)request didFailWithError:(NSError *)error
{
	[self requestDidFailWithError___org_xmlvm_iphone_SKRequest_org_xmlvm_iphone_NSError:request :error];
}

- (void)requestDidFinish:(SKRequest *)request
{
	[self requestDidFinish___org_xmlvm_iphone_SKRequest:request];
}

- (void) requestDidFailWithError___org_xmlvm_iphone_SKRequest_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_SKRequest*)req :(org_xmlvm_iphone_NSError*)error
{
}

- (void) requestDidFinish___org_xmlvm_iphone_SKRequest :(org_xmlvm_iphone_SKRequest*)req
{
}

@end
