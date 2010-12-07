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
#import "java_util_Set.h"
#import "org_xmlvm_iphone_CLLocation.h"
#import "org_xmlvm_iphone_CLHeading.h"
#import "org_xmlvm_iphone_CLRegion.h"
#import <CoreLocation/CLLocationManager.h>
@class org_xmlvm_iphone_CLLocationManagerDelegate;

typedef CLLocationManager org_xmlvm_iphone_CLLocationManager;

@interface CLLocationManager (cat_org_xmlvm_iphone_CLLocationManager)

+ (int) locationServicesEnabled__;
+ (int) significantLocationChangeMonitoringAvailable__;
+ (int) headingAvailable__;
+ (int) regionMonitoringAvailable__;
+ (int) regionMonitoringEnabled__;

- (void) __init_org_xmlvm_iphone_CLLocationManager__;
- (void) startUpdatingLocation__;
- (void) stopUpdatingLocation__;
- (void) startMonitoringSignificantLocationChanges__;
- (void) stopMonitoringSignificantLocationChanges__;
- (void) startUpdatingHeading__;
- (void) stopUpdatingHeading__;
- (void) dismissHeadingCalibrationDisplay__;
- (void) startMonitoringForRegion___org_xmlvm_iphone_CLRegion_double :(org_xmlvm_iphone_CLRegion*)region :(double)accuracy;
- (void) stopMonitoringForRegion___org_xmlvm_iphone_CLRegion :(org_xmlvm_iphone_CLRegion*)region;
- (org_xmlvm_iphone_CLLocationManagerDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_CLLocationManagerDelegate :(org_xmlvm_iphone_CLLocationManagerDelegate*)deleg;
- (double) getDesiredAccuracy__;
- (void) setDesiredAccuracy___double :(double)acc;
- (double) getDistanceFilter__;
- (void) setDistanceFilter___double :(double)filter;
- (double) getHeadingFilter__;
- (void) setHeadingFilter___double :(double)filter;
- (int) getHeadingOrientation__;
- (void) setHeadingOrientation___int :(int)orient;
- (java_util_Set*) getMonitoredRegions__;
- (double) getMaximumRegionMonitoringDistance__;
- (org_xmlvm_iphone_CLHeading*) getHeading__;
- (org_xmlvm_iphone_CLLocation*) getLocation__;
- (java_lang_String*) getPurpose__;
- (void) setPurpose___java_lang_String :(java_lang_String*)purp;

@end

