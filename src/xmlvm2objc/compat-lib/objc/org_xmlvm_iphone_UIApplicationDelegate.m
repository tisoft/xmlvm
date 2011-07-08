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

- (void) applicationDidBecomeActive: (org_xmlvm_iphone_UIApplication*) app
{    
	[self applicationDidBecomeActive___org_xmlvm_iphone_UIApplication: app];
}

- (void) applicationDidBecomeActive___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app
{    
	// Do nothing here
}

- (void) applicationDidFinishLaunching: (UIApplication*) app
{
    if ( [app isKindOfClass:[org_xmlvm_iphone_UIApplication class]] ) {
        SEL appsel = NSSelectorFromString([NSString stringWithFormat:@"__init_%s__", class_getName([app class])]);
        [app performSelector:appsel];
    }
    SEL delsel = NSSelectorFromString([NSString stringWithFormat:@"__init_%s__", class_getName([self class])]);
    [self performSelector:delsel];
    
    [self applicationDidFinishLaunching___org_xmlvm_iphone_UIApplication: app];
}

- (void) applicationDidFinishLaunching___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app
{
    // Do nothing here
}

- (void) applicationWillResignActive___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app
{
    // Do nothing here
}

- (void) applicationWillResignActive: (org_xmlvm_iphone_UIApplication*) app
{
	[self applicationWillResignActive___org_xmlvm_iphone_UIApplication: app];
}

- (void) applicationWillTerminate: (UIApplication*) app
{
    [self applicationWillTerminate___org_xmlvm_iphone_UIApplication: app];
}

- (void) applicationWillTerminate___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app
{
    // Do nothing here
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
	[self applicationDidReceiveMemoryWarning___org_xmlvm_iphone_UIApplication:application];
}

- (void) applicationDidReceiveMemoryWarning___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*)application
{
}

@end

