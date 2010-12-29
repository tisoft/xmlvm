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


#import "org_xmlvm_iphone_MKCoordinateSpan.h"

@implementation org_xmlvm_iphone_MKCoordinateSpan;

- (void) __init_org_xmlvm_iphone_MKCoordinateSpan___double_double :(double)latitudeDelta :(double)longitudeDelta
{
	self->latitudeDelta_double = latitudeDelta;
	self->longitudeDelta_double = longitudeDelta;
}

- (org_xmlvm_iphone_MKCoordinateSpan*) initWithMKCoordinateSpan:(MKCoordinateSpan) span
{
	self->latitudeDelta_double = span.latitudeDelta;
	self->longitudeDelta_double = span.longitudeDelta;
	return self;
}

- (MKCoordinateSpan) getMKCoordinateSpan
{
	MKCoordinateSpan span;
	span.latitudeDelta = self->latitudeDelta_double;
	span.longitudeDelta = self->longitudeDelta_double;
	return span;
}

@end

