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

#import "org_xmlvm_iphone_MKCoordinateRegion.h"

@implementation org_xmlvm_iphone_MKCoordinateRegion;

+ (id) alloc
{
	org_xmlvm_iphone_MKCoordinateRegion * this = [super alloc];	
    this->center_org_xmlvm_iphone_CLLocationCoordinate2D = [org_xmlvm_iphone_CLLocationCoordinate2D alloc];
    this->span_org_xmlvm_iphone_MKCoordinateSpan = [org_xmlvm_iphone_MKCoordinateSpan alloc];
	return this;
}

- (void) dealloc
{
    [center_org_xmlvm_iphone_CLLocationCoordinate2D release];
    [span_org_xmlvm_iphone_MKCoordinateSpan release];
    [super dealloc];
}

- (void) __init_org_xmlvm_iphone_MKCoordinateRegion___org_xmlvm_iphone_CLLocationCoordinate2D_org_xmlvm_iphone_MKCoordinateSpan :(org_xmlvm_iphone_CLLocationCoordinate2D*)center :(org_xmlvm_iphone_MKCoordinateSpan*)span
{
	self->center_org_xmlvm_iphone_CLLocationCoordinate2D->latitude_double = center->latitude_double;
	self->center_org_xmlvm_iphone_CLLocationCoordinate2D->longitude_double = center->longitude_double;
	self->span_org_xmlvm_iphone_MKCoordinateSpan->latitudeDelta_double = span->latitudeDelta_double;
	self->span_org_xmlvm_iphone_MKCoordinateSpan->longitudeDelta_double = span->longitudeDelta_double;
}

- (org_xmlvm_iphone_MKCoordinateRegion*) initWithMKCoordinateRegion:(MKCoordinateRegion) region
{
	self->center_org_xmlvm_iphone_CLLocationCoordinate2D->latitude_double = region.center.latitude;
	self->center_org_xmlvm_iphone_CLLocationCoordinate2D->longitude_double = region.center.longitude;
	self->span_org_xmlvm_iphone_MKCoordinateSpan->latitudeDelta_double = region.span.latitudeDelta;
	self->span_org_xmlvm_iphone_MKCoordinateSpan->longitudeDelta_double = region.span.longitudeDelta;
	return self;
}

-(MKCoordinateRegion) getMKCoordinateRegion
{
	MKCoordinateRegion region;
	region.center.latitude = self->center_org_xmlvm_iphone_CLLocationCoordinate2D->latitude_double;
	region.center.longitude = self->center_org_xmlvm_iphone_CLLocationCoordinate2D->longitude_double;
	region.span.latitudeDelta = self->span_org_xmlvm_iphone_MKCoordinateSpan->latitudeDelta_double;
	region.span.longitudeDelta = self->span_org_xmlvm_iphone_MKCoordinateSpan->longitudeDelta_double;
	return region;
}

@end

