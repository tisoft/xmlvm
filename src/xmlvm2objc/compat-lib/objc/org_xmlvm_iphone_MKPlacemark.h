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
#import "java_util_Map.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_CLLocationCoordinate2D.h"
#import <MapKit/MKPlacemark.h>

typedef MKPlacemark org_xmlvm_iphone_MKPlacemark;
@interface MKPlacemark (cat_org_xmlvm_iphone_MKPlacemark)

- (void) __init_org_xmlvm_iphone_MKPlacemark___org_xmlvm_iphone_CLLocationCoordinate2D_java_util_Map :(org_xmlvm_iphone_CLLocationCoordinate2D*)coord :(java_util_Map*)addr;
- (java_util_Map*) getAddressDictionary__;
- (java_lang_String*) getAdministrativeArea__;
- (java_lang_String*) getCountry__;
- (java_lang_String*) getCountryCode__;
- (java_lang_String*) getLocality__;
- (java_lang_String*) getPostalCode__;
- (java_lang_String*) getSubAdministrativeArea__;
- (java_lang_String*) getSubLocality__;
- (java_lang_String*) getSubThoroughfare__;
- (java_lang_String*) getThoroughfare__;

@end

