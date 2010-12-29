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
#import "java_lang_String.h"
#import "org_xmlvm_iphone_CLLocationCoordinate2D.h"
#import <CoreLocation/CLRegion.h>

typedef CLRegion org_xmlvm_iphone_CLRegion;

@interface CLRegion (cat_org_xmlvm_iphone_CLRegion)

- (void) __init_org_xmlvm_iphone_CLRegion___org_xmlvm_iphone_CLLocationCoordinate2D_double_java_lang_String :(org_xmlvm_iphone_CLLocationCoordinate2D*)center :(double)radius :(java_lang_String*)identifier;
- (org_xmlvm_iphone_CLLocationCoordinate2D*) getCenter__;
- (java_lang_String*) getIdentifier__;
- (double) getRadius__;
- (int) containsCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D :(org_xmlvm_iphone_CLLocationCoordinate2D*)coordinate;

@end

