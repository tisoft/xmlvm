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
#import "org_xmlvm_iphone_NSDate.h"
#import "org_xmlvm_iphone_NSCalendar.h"
#import "org_xmlvm_iphone_NSTimeZone.h"
#import "java_util_Map.h"

#define org_xmlvm_iphone_UILocalNotification UILocalNotification

@interface UILocalNotification (cat_org_xmlvm_iphone_UILocalNotification)
- (void) __init_org_xmlvm_iphone_UILocalNotification__;

- (java_lang_String*) getAlertAction__;
- (void) setAlertAction___java_lang_String :(java_lang_String*)n1;
- (java_lang_String*) getAlertBody__;
- (void) setAlertBody___java_lang_String :(java_lang_String*)n1;
- (java_lang_String*) getAlertLaunchImage__;
- (void) setAlertLaunchImage___java_lang_String :(java_lang_String*)n1;
- (int) getApplicationIconBadgeNumber__;
- (void) setApplicationIconBadgeNumber___int :(int)n1;
- (org_xmlvm_iphone_NSDate*) getFireDate__;
- (void) setFireDate___org_xmlvm_iphone_NSDate :(org_xmlvm_iphone_NSDate*)n1;
- (int) isHasAction__;
- (void) setHasAction___boolean :(int)n1;
- (org_xmlvm_iphone_NSCalendar*) getRepeatCalendar__;
- (void) setRepeatCalendar___org_xmlvm_iphone_NSCalendar :(org_xmlvm_iphone_NSCalendar*)n1;
- (int) getRepeatInterval__;
- (void) setRepeatInterval___int :(int)n1;
- (java_lang_String*) getSoundName__;
- (void) setSoundName___java_lang_String :(java_lang_String*)n1;
- (org_xmlvm_iphone_NSTimeZone*) getTimeZone__;
- (void) setTimeZone___org_xmlvm_iphone_NSTimeZone :(org_xmlvm_iphone_NSTimeZone*)n1;
- (java_util_Map*) getUserInfo__;
- (void) setUserInfo___java_util_Map :(java_util_Map*)n1;

@end

