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

#import "org_xmlvm_iphone_MKReverseGeocoder.h"
#import "org_xmlvm_iphone_MKReverseGeocoderDelegate.h"

@implementation MKReverseGeocoder (cat_org_xmlvm_iphone_MKReverseGeocoder)

- (void) __init_org_xmlvm_iphone_MKReverseGeocoder___org_xmlvm_iphone_CLLocationCoordinate2D :(org_xmlvm_iphone_CLLocationCoordinate2D*)coord
{
	[self initWithCoordinate:[coord getCLLocationCoordinate2D]];
}

- (org_xmlvm_iphone_CLLocationCoordinate2D*) getCoordinate__
{
	return [[org_xmlvm_iphone_CLLocationCoordinate2D alloc] initWithCoordinate2D:[self coordinate]];
}

- (org_xmlvm_iphone_MKPlacemark*) getPlacemark__
{
	return_XMLVM(placemark)
}

- (int) isQuerying__
{
	return [self isQuerying];
}

- (org_xmlvm_iphone_MKReverseGeocoderDelegate*) getDelegate__
{
	return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_MKReverseGeocoderDelegate :(org_xmlvm_iphone_MKReverseGeocoderDelegate*)n1
{
	XMLVM_PROPERTY(delegate,n1)
}

- (void) start__
{
	[self start];
}

- (void) cancel__
{
	[self cancel];
}

@end

