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

#import "org_xmlvm_iphone_SKRequest.h"
#import "org_xmlvm_iphone_NSObject.h"
#import "org_xmlvm_iphone_SKRequestDelegate.h"



@implementation SKRequest (cat_org_xmlvm_iphone_SKRequest)

- (void) start__
{
	[self start];
}

- (void) cancel__
{
	[self cancel];
}

- (org_xmlvm_iphone_SKRequestDelegate*) getDelegate__
{
	return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_SKRequestDelegate :(org_xmlvm_iphone_SKRequestDelegate*)newdelegate
{
	XMLVM_PROPERTY(delegate,newdelegate)
}

@end
