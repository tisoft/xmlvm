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



@interface org_xmlvm_iphone_UIApplicationDelegate : java_lang_Object <UIApplicationDelegate>
- (void) __init_org_xmlvm_iphone_UIApplicationDelegate__;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (void) applicationDidFinishLaunching___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationWillTerminate: (UIApplication*) app;
- (void) applicationWillTerminate___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationDidBecomeActive___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationDidBecomeActive:(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationWillResignActive___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationWillResignActive:(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationDidReceiveMemoryWarning:(UIApplication *)application;
- (void) applicationDidReceiveMemoryWarning___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*)application;

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;
- (int) openURL___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSURL_java_lang_String_java_lang_Object :(org_xmlvm_iphone_UIApplication*)n1 :(org_xmlvm_iphone_NSURL*)n2 :(java_lang_String*)n3 :(java_lang_Object*)n4;

@end

