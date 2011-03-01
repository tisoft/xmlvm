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

#import "xmlvm.h"
#import "org_xmlvm_iphone_MKMapRect.h"
#import "org_xmlvm_iphone_CLLocationCoordinate2D.h"
#import <MapKit/MKOverlay.h>

@interface org_xmlvm_iphone_MKOverlay : java_lang_Object <MKOverlay>

- (void) __init_org_xmlvm_iphone_MKOverlay__;
- (org_xmlvm_iphone_MKMapRect*) getBoundingMapRect__;
- (org_xmlvm_iphone_CLLocationCoordinate2D*) getCoordinate__;
- (int) intersectsMapRect___org_xmlvm_iphone_MKMapRect :(org_xmlvm_iphone_MKMapRect*)n1;

- (MKMapRect) boundingMapRect;
- (CLLocationCoordinate2D) coordinate;
- (BOOL)intersectsMapRect:(MKMapRect)mapRect;

@end

