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
#import "org_xmlvm_iphone_NSNotification.h"
#import "org_xmlvm_iphone_NSURL.h"
#import "java_util_List.h"
#import "org_xmlvm_iphone_UIWindow.h"

@class org_xmlvm_iphone_UIApplicationDelegate;

// UIApplication
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UIApplication : UIApplication
+ (void) main___java_lang_String_ARRAYTYPE_java_lang_Class_java_lang_Class :(XMLVMArray*) args :(java_lang_Class*) app :(java_lang_Class*) del;
+ (org_xmlvm_iphone_UIApplication*) sharedApplication__;
- (void) __init_org_xmlvm_iphone_UIApplication__;
- (void) setDelegate___org_xmlvm_iphone_UIApplicationDelegate :(org_xmlvm_iphone_UIApplicationDelegate*) newdelegate;
- (org_xmlvm_iphone_UIApplicationDelegate*) getDelegate__;
- (void) setStatusBarHidden___boolean:(bool) flag;
- (void) setStatusBarHidden___boolean_boolean:(int) hidden :(int) animated;
- (void) setStatusBarOrientation___int: (int) orientation;
- (void) setStatusBarStyle___int: (int) style;
- (void) setStatusBarStyle___int_boolean: (int) style :(int) animated;
- (int) getStatusBarStyle__;
- (void) setNetworkActivityIndicatorVisible___boolean:(int) activity;
- (BOOL) isNetworkActivityIndicatorVisible__;
- (org_xmlvm_iphone_UIWindow*) getKeyWindow__;
- (void) setIdleTimerDisabled___boolean: (bool) flag;
- (java_util_List *) getWindows__;
- (BOOL) openURL___org_xmlvm_iphone_NSURL:(org_xmlvm_iphone_NSURL*)url;
@end
