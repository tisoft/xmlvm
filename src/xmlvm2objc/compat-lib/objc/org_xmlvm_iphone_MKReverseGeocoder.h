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
#import "org_xmlvm_iphone_CLLocationCoordinate2D.h"
#import "org_xmlvm_iphone_MKPlacemark.h"
#import <MapKit/MKReverseGeocoder.h>
@class org_xmlvm_iphone_MKReverseGeocoderDelegate;

typedef MKReverseGeocoder org_xmlvm_iphone_MKReverseGeocoder;
@interface MKReverseGeocoder (cat_org_xmlvm_iphone_MKReverseGeocoder)

- (void) __init_org_xmlvm_iphone_MKReverseGeocoder___org_xmlvm_iphone_CLLocationCoordinate2D :(org_xmlvm_iphone_CLLocationCoordinate2D*)coord;
- (org_xmlvm_iphone_CLLocationCoordinate2D*) getCoordinate__;
- (org_xmlvm_iphone_MKPlacemark*) getPlacemark__;
- (int) isQuerying__;
- (org_xmlvm_iphone_MKReverseGeocoderDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_MKReverseGeocoderDelegate :(org_xmlvm_iphone_MKReverseGeocoderDelegate*)n1;
- (void) start__;
- (void) cancel__;

@end

