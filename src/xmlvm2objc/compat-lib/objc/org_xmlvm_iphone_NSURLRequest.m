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


#import "org_xmlvm_iphone_NSURLRequest.h"

// NSURLRequest
//----------------------------------------------------------------------------
@implementation NSURLRequest (cat_NSURLRequest)

+ (org_xmlvm_iphone_NSURLRequest*) requestWithURL___org_xmlvm_iphone_NSURL :(org_xmlvm_iphone_NSURL*)url
{
    return_XMLVM_SELECTOR(NSURLRequest requestWithURL:url)
}

+ (org_xmlvm_iphone_NSURLRequest*) requestWithURL___org_xmlvm_iphone_NSURL_int_double :(org_xmlvm_iphone_NSURL*)url :(int)cachePolicy :(double)timeout
{
    return_XMLVM_SELECTOR(NSURLRequest requestWithURL:url cachePolicy:cachePolicy timeoutInterval:timeout)
}

- (void) __init_org_xmlvm_iphone_NSURLRequest___org_xmlvm_iphone_NSURL :(org_xmlvm_iphone_NSURL*)url{
    [self initWithURL:url];
}

- (void) __init_org_xmlvm_iphone_NSURLRequest___org_xmlvm_iphone_NSURL_int_double :(org_xmlvm_iphone_NSURL*)url :(int)cachePolicy :(double)timeout
{
    [self initWithURL:url cachePolicy:cachePolicy timeoutInterval:timeout];
}

- (org_xmlvm_iphone_NSURL*) URL__
{
    return_XMLVM(URL)
}

- (int) cachePolicy__
{
    return [self cachePolicy];
}

- (double) timeoutInterval__
{
    return [self timeoutInterval];
}

@end

