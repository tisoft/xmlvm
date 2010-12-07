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

#import "xmlvm.h"
#import "org_xmlvm_iphone_NSDate.h"
#import "org_xmlvm_iphone_CLLocationCoordinate2D.h"


typedef CLLocation org_xmlvm_iphone_CLLocation;

@interface CLLocation (cat_org_xmlvm_iphone_CLLocation)

- (void) __init_org_xmlvm_iphone_CLLocation___double_double :(double)lat :(double)lon;
- (void) __init_org_xmlvm_iphone_CLLocation___org_xmlvm_iphone_CLLocationCoordinate2D_double_double_double_org_xmlvm_iphone_NSDate :(org_xmlvm_iphone_CLLocationCoordinate2D*)coordinate :(double)altitude :(double)hAccuracy :(double)vAccuracy :(org_xmlvm_iphone_NSDate*)timestamp;
- (double) getAltitude__;
- (org_xmlvm_iphone_CLLocationCoordinate2D*) getCoordinate__;
- (double) getCourse__;
- (double) getHorizontalAccuracy__;
- (double) getSpeed__;
- (org_xmlvm_iphone_NSDate*) getTimestamp__;
- (double) getVerticalAccuracy__;
- (double) distanceFromLocation___org_xmlvm_iphone_CLLocation :(org_xmlvm_iphone_CLLocation*)location;

@end

