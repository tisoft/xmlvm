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

/** @author teras */

#import "java_util_ArrayList.h"
#import "org_xmlvm_iphone_UINavigationController.h"
#import "org_xmlvm_iphone_UIViewController.h"
#import "org_xmlvm_iphone_UITabBar.h"
#import "org_xmlvm_iphone_UIViewController_macros.h"
@class org_xmlvm_iphone_UITabBarControllerDelegate;
@class org_xmlvm_iphone_UIViewController;

typedef UITabBarController org_xmlvm_iphone_UITabBarControllerImpl;

@interface UITabBarController (cat_org_xmlvm_iphone_UITabBarControllerImpl)

- (void) __init_org_xmlvm_iphone_UITabBarController__;
- (java_util_ArrayList*) getCustomizableViewControllers__;
- (void) setCustomizableViewControllers___java_util_ArrayList :(java_util_ArrayList*)n1;
- (org_xmlvm_iphone_UITabBarControllerDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate :(org_xmlvm_iphone_UITabBarControllerDelegate*)n1;
- (org_xmlvm_iphone_UINavigationController*) getMoreNavigationController__;
- (org_xmlvm_iphone_UIViewController*) getSelectedViewController__;
- (void) setSelectedViewController___org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UIViewController*)n1;
- (int) getSelectedIndex__;
- (void) setSelectedIndex___int :(int)n1;
- (org_xmlvm_iphone_UITabBar*) getTabBar__;
- (java_util_ArrayList*) getViewControllers__;
- (void) setViewControllers___java_util_ArrayList :(java_util_ArrayList*)n1;
- (void) setViewControllers___java_util_ArrayList_boolean :(java_util_ArrayList*)n1 :(int)n2;

@end

@interface org_xmlvm_iphone_UITabBarController : org_xmlvm_iphone_UITabBarControllerImpl
UIVIEWCONTROLLER_CALLBACKS_INC
@end
