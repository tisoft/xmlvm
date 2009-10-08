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
#import "org_xmlvm_iphone_NSNotification.h"

// UIApplication
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UIApplication : UIApplication <UIApplicationDelegate>
- (void) __init_org_xmlvm_iphone_UIApplication;
+ (org_xmlvm_iphone_UIApplication*) getSharedApplication;
- (void) applicationDidFinishLaunching: (UIApplication*) app;
- (void) applicationDidFinishLaunching___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationWillTerminate: (UIApplication*) app;
- (void) applicationWillTerminate___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationDidBecomeActive___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationDidBecomeActive:(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationWillResignActive___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*) app;
- (void) applicationWillResignActive:(org_xmlvm_iphone_UIApplication*) app;
- (void) setStatusBarHidden___boolean:(bool) flag;
- (void) setStatusBarOrientation___int: (int) orientation;
- (void) setIdleTimerDisabled___boolean: (bool) flag;
+ (void) main___java_lang_String_ARRAYTYPE_java_lang_Class :(NSMutableArray*) args :(java_lang_Class*) app;
@end