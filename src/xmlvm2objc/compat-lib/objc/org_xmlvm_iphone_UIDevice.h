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
#import "java_lang_String.h"

typedef UIDevice org_xmlvm_iphone_UIDevice;
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

