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

#import "org_xmlvm_iphone_CLLocationManagerDelegate.h"


@implementation org_xmlvm_iphone_CLLocationManagerDelegate;

- (void) __init_org_xmlvm_iphone_CLLocationManagerDelegate__
{
}

- (void) didUpdateToLocation___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLLocation_org_xmlvm_iphone_CLLocation :(org_xmlvm_iphone_CLLocationManager*)n1 :(org_xmlvm_iphone_CLLocation*)n2 :(org_xmlvm_iphone_CLLocation*)n3
{
}

- (void) didFailWithError___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_CLLocationManager*)n1 :(org_xmlvm_iphone_NSError*)n2
{
}

- (void) didUpdateHeading___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLHeading :(org_xmlvm_iphone_CLLocationManager*)n1 :(org_xmlvm_iphone_CLHeading*)n2
{
}

- (int) locationManagerShouldDisplayHeadingCalibration___org_xmlvm_iphone_CLLocationManager :(org_xmlvm_iphone_CLLocationManager*)n1
{
	return NO;
}

- (void) didEnterRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion :(org_xmlvm_iphone_CLLocationManager*)n1 :(org_xmlvm_iphone_CLRegion*)n2
{
}

- (void) didExitRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion :(org_xmlvm_iphone_CLLocationManager*)n1 :(org_xmlvm_iphone_CLRegion*)n2
{
}

- (void) monitoringDidFailForRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_CLLocationManager*)n1 :(org_xmlvm_iphone_CLRegion*)n2 :(org_xmlvm_iphone_NSError*)n3
{
}

- (void)locationManager:(CLLocationManager *)manager didEnterRegion:(CLRegion *)region
{
	[self didEnterRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion:manager :region];
}

- (void)locationManager:(CLLocationManager *)manager didExitRegion:(CLRegion *)region
{
	[self didExitRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion:manager :region];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
	[self didFailWithError___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_NSError:manager :error];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
	[self didUpdateHeading___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLHeading:manager :newHeading];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
	[self didUpdateToLocation___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLLocation_org_xmlvm_iphone_CLLocation:manager :newLocation :oldLocation];
}

- (void)locationManager:(CLLocationManager *)manager monitoringDidFailForRegion:(CLRegion *)region withError:(NSError *)error
{
	[self monitoringDidFailForRegion___org_xmlvm_iphone_CLLocationManager_org_xmlvm_iphone_CLRegion_org_xmlvm_iphone_NSError:manager :region :error];
}

- (BOOL)locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)manager
{
	return [self locationManagerShouldDisplayHeadingCalibration:manager];
}


@end

