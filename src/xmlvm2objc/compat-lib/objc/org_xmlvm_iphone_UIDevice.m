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

#import "org_xmlvm_iphone_UIDevice.h"

@implementation UIDevice (cat_org_xmlvm_iphone_UIDevice)

+ (org_xmlvm_iphone_UIDevice*) currentDevice__
{
	return_XMLVM_SELECTOR(org_xmlvm_iphone_UIDevice currentDevice);
}

- (int) getMultitaskingSupported__
{
	return [self isMultitaskingSupported];
}

- (java_lang_String*) getUniqueIdentifier__
{
	return_XMLVM(uniqueIdentifier);
}

- (java_lang_String*) getName__
{
	return_XMLVM(name)
}

- (java_lang_String*) getSystemName__
{
	return_XMLVM(systemName)
}

- (java_lang_String*) getSystemVersion__
{
	return_XMLVM(systemVersion)
}

- (java_lang_String*) getModel__
{
	return_XMLVM(model)
}

- (java_lang_String*) getLocalizedModel__
{
	return_XMLVM(localizedModel)
}

- (int) getUserInterfaceIdiom__
{
	return [self userInterfaceIdiom];
}

- (int) getOrientation__
{
	return [self orientation];
}

- (int) isGeneratingDeviceOrientationNotifications__
{
	return [self isGeneratingDeviceOrientationNotifications];
}

- (void) beginGeneratingDeviceOrientationNotifications__
{
	[self beginGeneratingDeviceOrientationNotifications];
}

- (void) endGeneratingDeviceOrientationNotifications__
{
	[self endGeneratingDeviceOrientationNotifications];
}

- (float) getBatteryLevel__
{
	return [self batteryLevel];
}

- (int) isBatteryMonitoringEnabled__
{
	return [self isBatteryMonitoringEnabled];
}

- (void) setBatteryMonitoringEnabled___boolean :(int)n1
{
}

- (int) getBatteryState__
{
	return [self batteryState];
}

- (int) isProximityMonitoringEnabled__
{
	return [self isProximityMonitoringEnabled];
}

- (void) setProximityMonitoringEnabled___boolean :(int)n1
{
	[self setProximityMonitoringEnabled:n1];
}

- (int) getProximityState__
{
	return [self proximityState];
}

@end

