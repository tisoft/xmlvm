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

