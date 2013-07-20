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

#define org_xmlvm_iphone_UIDevice UIDevice
@interface UIDevice (cat_org_xmlvm_iphone_UIDevice)

+ (org_xmlvm_iphone_UIDevice*) currentDevice__;
- (int) getMultitaskingSupported__;
- (java_lang_String*) getUniqueIdentifier__;
- (java_lang_String*) getName__;
- (java_lang_String*) getSystemName__;
- (java_lang_String*) getSystemVersion__;
- (java_lang_String*) getModel__;
- (java_lang_String*) getLocalizedModel__;
- (int) getUserInterfaceIdiom__;
- (int) getOrientation__;
- (int) isGeneratingDeviceOrientationNotifications__;
- (void) beginGeneratingDeviceOrientationNotifications__;
- (void) endGeneratingDeviceOrientationNotifications__;
- (float) getBatteryLevel__;
- (int) isBatteryMonitoringEnabled__;
- (void) setBatteryMonitoringEnabled___boolean :(int)n1;
- (int) getBatteryState__;
- (int) isProximityMonitoringEnabled__;
- (void) setProximityMonitoringEnabled___boolean :(int)n1;
- (int) getProximityState__;

@end

