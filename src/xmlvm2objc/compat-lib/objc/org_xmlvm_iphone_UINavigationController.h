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
#import "org_xmlvm_iphone_UIViewController.h"
#import "java_util_List.h"
#import "org_xmlvm_iphone_UINavigationBar.h"
#import "org_xmlvm_iphone_UIToolbar.h"
#import "org_xmlvm_iphone_UIViewController_macros.h"
@class org_xmlvm_iphone_UINavigationControllerDelegate;



typedef UINavigationController org_xmlvm_iphone_UINavigationControllerImpl;

@interface UINavigationController (cat_org_xmlvm_iphone_UINavigationControllerImpl)

- (void) __init_org_xmlvm_iphone_UINavigationController___org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UIViewController*)n1;
- (org_xmlvm_iphone_UIViewController*) getTopViewController__;
- (org_xmlvm_iphone_UIViewController*) getVisibleViewController__;
- (java_util_List*) getViewControllers__;
- (void) setViewControllers___java_util_List :(java_util_List*)n1;
- (void) setViewControllers___java_util_List_boolean :(java_util_List*)n1 :(int)n2;
- (void) pushViewController___org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UIViewController*)n1 :(int)n2;
- (org_xmlvm_iphone_UIViewController*) popViewControllerAnimated___boolean :(int)n1;
- (java_util_List*) popToRootViewControllerAnimated___boolean :(int)n1;
- (java_util_List*) popToViewController___org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UIViewController*)n1 :(int)n2;
- (int) isNavigationBarHidden__;
- (void) setNavigationBarHidden___boolean :(int)n1;
- (void) setNavigationBarHidden___boolean_boolean :(int)n1 :(int)n2;
- (org_xmlvm_iphone_UINavigationBar*) getNavigationBar__;
- (int) isToolbarHidden__;
- (void) setToolbarHidden___boolean :(int)n1;
- (void) setToolbarHidden___boolean_boolean :(int)n1 :(int)n2;
- (org_xmlvm_iphone_UIToolbar*) getToolbar__;
- (void) setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate :(org_xmlvm_iphone_UINavigationControllerDelegate*)n1;
- (org_xmlvm_iphone_UINavigationControllerDelegate*) getNavigationDelegate__;

@end

@interface org_xmlvm_iphone_UINavigationController : org_xmlvm_iphone_UINavigationControllerImpl
UIVIEWCONTROLLER_CALLBACKS_INC
@end
