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

