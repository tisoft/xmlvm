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

#import "org_xmlvm_iphone_UIApplicationDelegate.h"

@implementation org_xmlvm_iphone_UIApplicationDelegate

- (void) __init_org_xmlvm_iphone_UIApplicationDelegate__
{
}

/* Masked delegate methods */

- (int) didFinishLaunchingWithOptions___org_xmlvm_iphone_UIApplication_java_util_Map :(org_xmlvm_iphone_UIApplication*)n1 :(java_util_Map*)n2
{
    return YES;
}
- (int) openURL___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSURL_java_lang_String_java_lang_Object :(org_xmlvm_iphone_UIApplication*)n1 :(org_xmlvm_iphone_NSURL*)n2 :(java_lang_String*)n3 :(java_lang_Object*)n4
{
    return YES;
}


- (void) didBecomeActive___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app
{
    
}
- (void) didChangeStatusBarFrame___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_UIApplication*) app: (org_xmlvm_iphone_CGRect*) rect
{
    
}
- (void) didChangeStatusBarOrientation___org_xmlvm_iphone_UIApplication_int:(org_xmlvm_iphone_UIApplication*) app: (int) orientation
{
    
}
- (void) didEnterBackground___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app
{
    
}
- (void) didFailToRegisterForRemoteNotificationsWithError___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSError:(org_xmlvm_iphone_UIApplication*) app:(org_xmlvm_iphone_NSError*) error
{
    
}
- (void) didReceiveLocalNotification___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_UILocalNotification:(org_xmlvm_iphone_UIApplication*) app:(org_xmlvm_iphone_UILocalNotification*) notification
{
    
}
- (void) didReceiveMemoryWarning___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app
{
    
}
- (void) didReceiveRemoteNotification___org_xmlvm_iphone_UIApplication_java_util_Map:(org_xmlvm_iphone_UIApplication*) app:(java_util_Map*) options{
    
}
- (void) didRegisterForRemoteNotificationsWithDeviceToken___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSData:(org_xmlvm_iphone_UIApplication*) app:(org_xmlvm_iphone_NSData*) data
{
    
}
- (void) protectedDataDidBecomeAvailable___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app
{
    
}
- (void) protectedDataWillBecomeUnavailable___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app
{
    
}
- (void) significantTimeChange___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app
{
    
}
- (void) willChangeStatusBarFrame___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_UIApplication*) app:(org_xmlvm_iphone_CGRect*) rect
{
    
}
- (void) willChangeStatusBarOrientation___org_xmlvm_iphone_UIApplication_int_double:(org_xmlvm_iphone_UIApplication*) app :(int) orientation :(double) duration
{
    
}
- (void) willEnterForeground___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app
{
    
}
- (void) willResignActive___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app
{
    
}
- (void) willTerminate___org_xmlvm_iphone_UIApplication:(org_xmlvm_iphone_UIApplication*) app
{
    
}


/* Actual delegate methods */
- (BOOL)application:(UIApplication *)app didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    if ( [app isKindOfClass:[org_xmlvm_iphone_UIApplication class]] ) {
        SEL appsel = NSSelectorFromString([NSString stringWithFormat:@"__init_%s__", class_getName([app class])]);
        [app performSelector:appsel];
    }
    SEL delsel = NSSelectorFromString([NSString stringWithFormat:@"__init_%s__", class_getName([self class])]);
    [self performSelector:delsel];
    
    return [self didFinishLaunchingWithOptions___org_xmlvm_iphone_UIApplication_java_util_Map:app: XMLVM_NIL2NULL(launchOptions)];
}
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    return [self openURL___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSURL_java_lang_String_java_lang_Object:application :XMLVM_NIL2NULL(url) :XMLVM_NIL2NULL(sourceApplication) :XMLVM_NIL2NULL(annotation)];
}

- (void) applicationDidBecomeActive:(UIApplication *)application
{
    [self didBecomeActive___org_xmlvm_iphone_UIApplication:application];
}
- (void) application:(UIApplication *)application didChangeStatusBarFrame:(CGRect)oldStatusBarFrame
{
    org_xmlvm_iphone_CGRect* rect = [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:oldStatusBarFrame];
    [self didChangeStatusBarFrame___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_CGRect:application :rect];
    [rect release];
}
- (void) application:(UIApplication *)application didChangeStatusBarOrientation:(UIInterfaceOrientation)oldStatusBarOrientation
{
    [self didChangeStatusBarOrientation___org_xmlvm_iphone_UIApplication_int:application :oldStatusBarOrientation];
}
- (void) applicationDidEnterBackground:(UIApplication *)application
{
    [self didEnterBackground___org_xmlvm_iphone_UIApplication:application];
}
- (void) application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
    [self didFailToRegisterForRemoteNotificationsWithError___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSError:application :error];
}
- (void) application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    [self didReceiveLocalNotification___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_UILocalNotification:application :notification];
}
- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
	[self didReceiveMemoryWarning___org_xmlvm_iphone_UIApplication:application];
}
- (void) application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
{
    [self didReceiveRemoteNotification___org_xmlvm_iphone_UIApplication_java_util_Map:application :XMLVM_NIL2NULL(userInfo)];
}
- (void) application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    [self didRegisterForRemoteNotificationsWithDeviceToken___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSData:application :XMLVM_NIL2NULL(deviceToken)];
}
- (void) applicationProtectedDataDidBecomeAvailable:(UIApplication *)application
{
    [self protectedDataDidBecomeAvailable___org_xmlvm_iphone_UIApplication:application];
}
- (void) applicationProtectedDataWillBecomeUnavailable:(UIApplication *)application
{
    [self protectedDataWillBecomeUnavailable___org_xmlvm_iphone_UIApplication:application];
}
- (void) applicationSignificantTimeChange:(UIApplication *)application
{
    [self significantTimeChange___org_xmlvm_iphone_UIApplication:application];
}
- (void) application:(UIApplication *)application willChangeStatusBarFrame:(CGRect)newStatusBarFrame
{
    org_xmlvm_iphone_CGRect* rect = [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:newStatusBarFrame];
    [self willChangeStatusBarFrame___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_CGRect:application :rect];
    [rect release];
}
- (void) application:(UIApplication *)application willChangeStatusBarOrientation:(UIInterfaceOrientation)newStatusBarOrientation duration:(NSTimeInterval)duration
{
    [self willChangeStatusBarOrientation___org_xmlvm_iphone_UIApplication_int_double:application :newStatusBarOrientation :duration];
}
- (void) applicationWillEnterForeground:(UIApplication *)application
{
    [self willEnterForeground___org_xmlvm_iphone_UIApplication:application];
}
- (void) applicationWillResignActive:(UIApplication *)application
{
    [self willResignActive___org_xmlvm_iphone_UIApplication:application];
}
- (void) applicationWillTerminate:(UIApplication *)application
{
    [self willTerminate___org_xmlvm_iphone_UIApplication:application];
}



@end

