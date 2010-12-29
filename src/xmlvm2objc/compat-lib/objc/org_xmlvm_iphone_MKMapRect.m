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

#import "org_xmlvm_iphone_MKMapRect.h"

@implementation org_xmlvm_iphone_MKMapRect;

+ (id) alloc
{
	org_xmlvm_iphone_MKMapRect * this = [super alloc];	
    this->origin_org_xmlvm_iphone_MKMapPoint = [org_xmlvm_iphone_MKMapPoint alloc];
    this->size_org_xmlvm_iphone_MKMapSize = [org_xmlvm_iphone_MKMapSize alloc];
	return this;
}

- (void) dealloc
{
    [origin_org_xmlvm_iphone_MKMapPoint release];
    [size_org_xmlvm_iphone_MKMapSize release];
    [super dealloc];
}

- (void) __init_org_xmlvm_iphone_MKMapRect___float_float_float_float :(float)x :(float)y :(float)width :(float)height
{
	self->origin_org_xmlvm_iphone_MKMapPoint->x_double = x;
	self->origin_org_xmlvm_iphone_MKMapPoint->y_double = y;
	self->size_org_xmlvm_iphone_MKMapSize->width_double = width;
	self->size_org_xmlvm_iphone_MKMapSize->height_double = height;
}

- (org_xmlvm_iphone_MKMapRect*) initWithMKMapRect:(MKMapRect) rect
{
	self->origin_org_xmlvm_iphone_MKMapPoint->x_double = rect.origin.x;
	self->origin_org_xmlvm_iphone_MKMapPoint->y_double = rect.origin.y;
	self->size_org_xmlvm_iphone_MKMapSize->width_double = rect.size.width;
	self->size_org_xmlvm_iphone_MKMapSize->height_double = rect.size.height;
	return self;
}

- (MKMapRect) getMKMapRect
{
	MKMapRect rect;
	rect.origin.x = self->origin_org_xmlvm_iphone_MKMapPoint->x_double;
	rect.origin.y = self->origin_org_xmlvm_iphone_MKMapPoint->y_double;
	rect.size.width = self->size_org_xmlvm_iphone_MKMapSize->width_double;
	rect.size.height = self->size_org_xmlvm_iphone_MKMapSize->height_double;
	return rect;
}


@end

