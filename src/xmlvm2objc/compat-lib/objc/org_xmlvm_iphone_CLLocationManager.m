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

#import "org_xmlvm_iphone_CLLocationManager.h"
#import "org_xmlvm_iphone_CLLocationManagerDelegate.h"


@implementation CLLocationManager (cat_org_xmlvm_iphone_CLLocationManager)

+ (int) locationServicesEnabled__
{
	return [CLLocationManager locationServicesEnabled];
}

+ (int) significantLocationChangeMonitoringAvailable__
{
	return [CLLocationManager significantLocationChangeMonitoringAvailable];
}

+ (int) headingAvailable__
{
	return [CLLocationManager headingAvailable];
}

+ (int) regionMonitoringAvailable__
{
	return [CLLocationManager regionMonitoringAvailable];
}

+ (int) regionMonitoringEnabled__
{
	return [CLLocationManager regionMonitoringEnabled];
}


- (void) __init_org_xmlvm_iphone_CLLocationManager__
{	
}

- (void) startUpdatingLocation__
{
	[self startUpdatingLocation];
}

- (void) stopUpdatingLocation__
{
	[self stopUpdatingLocation];
}

- (void) startMonitoringSignificantLocationChanges__
{
	[self startMonitoringSignificantLocationChanges];
}

- (void) stopMonitoringSignificantLocationChanges__
{
	[self stopMonitoringSignificantLocationChanges];
}

- (void) startUpdatingHeading__
{
	[self startUpdatingHeading];
}

- (void) stopUpdatingHeading__
{
	[self stopUpdatingHeading];
}

- (void) dismissHeadingCalibrationDisplay__
{
	[self dismissHeadingCalibrationDisplay];
}

- (void) startMonitoringForRegion___org_xmlvm_iphone_CLRegion_double :(org_xmlvm_iphone_CLRegion*)region :(double)accuracy
{
	[self startMonitoringForRegion:region desiredAccuracy:accuracy];
}

- (void) stopMonitoringForRegion___org_xmlvm_iphone_CLRegion :(org_xmlvm_iphone_CLRegion*)region
{
	[self stopMonitoringForRegion:region];
}

- (org_xmlvm_iphone_CLLocationManagerDelegate*) getDelegate__
{
	return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_CLLocationManagerDelegate :(org_xmlvm_iphone_CLLocationManagerDelegate*)deleg
{
	XMLVM_PROPERTY(delegate,deleg)
}

- (double) getDesiredAccuracy__
{
	return [self desiredAccuracy];
}

- (void) setDesiredAccuracy___double :(double)acc
{
	[self setDesiredAccuracy:acc];
}

- (double) getDistanceFilter__
{
	return [self distanceFilter];
}

- (void) setDistanceFilter___double :(double)filter
{
	[self setDistanceFilter:filter];
}

- (double) getHeadingFilter__
{
	return [self headingFilter];
}

- (void) setHeadingFilter___double :(double)filter
{
	[self setHeadingFilter:filter];
}

- (int) getHeadingOrientation__
{
	return [self headingOrientation];
}

- (void) setHeadingOrientation___int :(int)orient
{
	[self setHeadingOrientation:orient];
}

- (java_util_Set*) getMonitoredRegions__
{
	return_XMLVM(monitoredRegions)
}

- (double) getMaximumRegionMonitoringDistance__
{
	return [self maximumRegionMonitoringDistance];
}

- (org_xmlvm_iphone_CLHeading*) getHeading__
{
	return_XMLVM(heading)
}

- (org_xmlvm_iphone_CLLocation*) getLocation__
{
	return_XMLVM(location)
}

- (java_lang_String*) getPurpose__
{
	return_XMLVM(purpose)
}

- (void) setPurpose___java_lang_String :(java_lang_String*)purp
{
	[self setPurpose:purp];
}


@end

