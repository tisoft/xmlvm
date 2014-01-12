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
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_UIApplication.h"
#import "org_xmlvm_iphone_UILocalNotification.h"
#import "org_xmlvm_iphone_NSError.h"
#import "org_xmlvm_iphone_UILocalNotification.h"
#import "java_util_Map.h"
#import "org_xmlvm_iphone_NSData.h"
#import "org_xmlvm_iphone_UIWindow.h"
#import "org_xmlvm_iphone_NSURL.h"


@interface org_xmlvm_iphone_UIApplicationDelegate : java_lang_Object <UIApplicationDelegate>
- (void) __init_org_xmlvm_iphone_UIApplicationDelegate__;

- (int) didFinishLaunchingWithOptions___org_xmlvm_iphone_UIApplication_java_util_Map :(org_xmlvm_iphone_UIApplication*)n1 :(java_util_Map*)n2;
- (int) openURL___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSURL_java_lang_String_java_lang_Object :(org_xmlvm_iphone_UIApplication*)n1 :(org_xmlvm_iphone_NSURL*)n2 :(java_lang_String*)n3 :(java_lang_Object*)n4;

- (void) didBecomeActive___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app;
- (void) didChangeStatusBarFrame___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_UIApplication*) app: (org_xmlvm_iphone_CGRect*) rect;
- (void) didChangeStatusBarOrientation___org_xmlvm_iphone_UIApplication_int:(org_xmlvm_iphone_UIApplication*) app: (int) orientation;
- (void) didEnterBackground___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app;
- (void) didFailToRegisterForRemoteNotificationsWithError___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSError:(org_xmlvm_iphone_UIApplication*) app:(org_xmlvm_iphone_NSError*) error;
- (void) didReceiveLocalNotification___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_UILocalNotification:(org_xmlvm_iphone_UIApplication*) app:(org_xmlvm_iphone_UILocalNotification*) notification;
- (void) didReceiveMemoryWarning___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app;
- (void) didReceiveRemoteNotification___org_xmlvm_iphone_UIApplication_java_util_Map:(org_xmlvm_iphone_UIApplication*) app:(java_util_Map*) options;
- (void) didRegisterForRemoteNotificationsWithDeviceToken___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSData:(org_xmlvm_iphone_UIApplication*) app:(org_xmlvm_iphone_NSData*) data;
- (void) protectedDataDidBecomeAvailable___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app;
- (void) protectedDataWillBecomeUnavailable___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app;
- (void) significantTimeChange___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app;
- (void) willChangeStatusBarFrame___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_UIApplication*) app:(org_xmlvm_iphone_CGRect*) rect;
- (void) willChangeStatusBarOrientation___org_xmlvm_iphone_UIApplication_int_double:(org_xmlvm_iphone_UIApplication*) app :(int) orientation :(double) duration;
- (void) willEnterForeground___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app;
- (void) willResignActive___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app;
- (void) willTerminate___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app;

@end

