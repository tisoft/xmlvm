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


#import "org_xmlvm_iphone_CLLocationCoordinate2D.h"
#import "org_xmlvm_iphone_NSObject.h"


@implementation org_xmlvm_iphone_CLLocationCoordinate2D;

- (void) __init_org_xmlvm_iphone_CLLocationCoordinate2D___double_double:(double) lat :(double) lon
{
	self->latitude_double = lat;
	self->longitude_double = lon;
}

- (org_xmlvm_iphone_CLLocationCoordinate2D*) initWithCoordinate2D:(CLLocationCoordinate2D) size
{
	self->latitude_double = size.latitude;
	self->longitude_double = size.longitude;
	return self;
}

- (CLLocationCoordinate2D) getCLLocationCoordinate2D
{
	CLLocationCoordinate2D coord;
	coord.latitude = latitude_double;
	coord.longitude = longitude_double;
	return coord;
}

- (java_lang_String*) toString__
{
	return [[NSString alloc] initWithFormat:@"[%f, %f]", self->latitude_double, self->longitude_double];
}

@end

