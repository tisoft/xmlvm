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

#import "org_xmlvm_iphone_CLLocation.h"

@implementation CLLocation (cat_org_xmlvm_iphone_CLLocation)

- (void) __init_org_xmlvm_iphone_CLLocation___double_double :(double)lat :(double)lon
{
	[self initWithLatitude:lat longitude:lon];
}

- (void) __init_org_xmlvm_iphone_CLLocation___org_xmlvm_iphone_CLLocationCoordinate2D_double_double_double_org_xmlvm_iphone_NSDate :(org_xmlvm_iphone_CLLocationCoordinate2D*)coordinate :(double)altitude :(double)hAccuracy :(double)vAccuracy :(org_xmlvm_iphone_NSDate*)timestamp
{
	[self initWithCoordinate:[coordinate getCLLocationCoordinate2D] altitude:altitude horizontalAccuracy:hAccuracy verticalAccuracy:vAccuracy timestamp:timestamp];
}

- (double) getAltitude__
{
	return [self altitude];
}

- (org_xmlvm_iphone_CLLocationCoordinate2D*) getCoordinate__
{
	return [[org_xmlvm_iphone_CLLocationCoordinate2D alloc] initWithCoordinate2D:[self coordinate]];
}

- (double) getCourse__
{
	return [self course];
}

- (double) getHorizontalAccuracy__
{
	return [self horizontalAccuracy];
}

- (double) getSpeed__
{
	return [self speed];
}

- (org_xmlvm_iphone_NSDate*) getTimestamp__
{
	return_XMLVM(timestamp);
}

- (double) getVerticalAccuracy__
{
	return [self verticalAccuracy];
}

- (double) distanceFromLocation___org_xmlvm_iphone_CLLocation :(org_xmlvm_iphone_CLLocation*)location
{
	return [self distanceFromLocation:location];
}


@end

