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



#import "org_xmlvm_iphone_UIView.h"
#import "java_util_List.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_UINavigationItem.h"
#import "org_xmlvm_iphone_UIBarButtonItem.h"
#import "org_xmlvm_iphone_UIViewController_macros.h"

@class org_xmlvm_iphone_UINavigationController;
@class org_xmlvm_iphone_UITabBarController;
@class org_xmlvm_iphone_UITabBarItem;
@class org_xmlvm_iphone_UIViewController;


#define org_xmlvm_iphone_UIViewControllerImpl UIViewController
@interface UIViewController (cat_org_xmlvm_iphone_UIViewControllerImpl)
+ (void) attemptRotationToDeviceOrientation__;
- (void) __init_org_xmlvm_iphone_UIViewController__;
- (int) isViewLoaded__;
- (org_xmlvm_iphone_UIView*) rotatingHeaderView__;
- (org_xmlvm_iphone_UIView*) rotatingFooterView__;
- (void) didReceiveMemoryWarning__;
- (int) wantsFullScreenLayout__;
- (int) getInterfaceOrientation__;
- (org_xmlvm_iphone_UINavigationController*) getNavigationController__;
- (int) isEditing__;
- (int) hidesBottomBarWhenPushed__;
- (int) getModalPresentationStyle__;
- (void) setModalPresentationStyle___int: (int) modalPresentationStyle;
- (int) getModalTransitionStyle__;
- (void) setModalTransitionStyle___int: (int) modalTransitionStyle;
- (org_xmlvm_iphone_UITabBarController*) getTabBarController__;
- (org_xmlvm_iphone_UITabBarItem*) getTabBarItem__;
- (void) setTabBarItem___org_xmlvm_iphone_UITabBarItem :(org_xmlvm_iphone_UITabBarItem*)n1;
- (java_util_List*) getToolbarItems__;
- (void) setToolbarItems___java_util_List :(java_util_List*)n1;
- (void) setToolbarItems___java_util_List_boolean :(java_util_List*)n1 :(int)n2;

- (void) willRotateToInterfaceOrientation___int_double :(int)n1 :(double)n2;
- (void) willAnimateRotationToInterfaceOrientation___int_double :(int)n1 :(double)n2;
- (void) didRotateFromInterfaceOrientation___int :(int)n1;
- (void) willAnimateFirstHalfOfRotationToInterfaceOrientation___int_double :(int)n1 :(double)n2;
- (void) didAnimateFirstHalfOfRotationToInterfaceOrientation___int :(int)n1;
- (void) willAnimateSecondHalfOfRotationFromInterfaceOrientation___int_double :(int)n1 :(double)n2;
- (org_xmlvm_iphone_UIView*) getView__;
- (void) setView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
- (java_lang_String*) getTitle__;
- (void) setTitle___java_lang_String :(java_lang_String*)n1;
- (void) setWantsFullScreenLayout___boolean :(int)n1;
- (org_xmlvm_iphone_UINavigationController*) getNavigationController__;
- (org_xmlvm_iphone_UINavigationItem*) getNavigationItem__;
- (org_xmlvm_iphone_UIBarButtonItem*) editButtonItem__;
- (void) setEditing___boolean :(int)n1;
- (void) setEditing___boolean_boolean :(int)n1 :(int)n2;
- (void) setHidesBottomBarWhenPushed___boolean :(int)n1;
- (void) presentModalViewController___org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UIViewController*)modalViewController :(int)animated ;
- (void) dismissModalViewControllerAnimated___boolean :(int)animated;
- (org_xmlvm_iphone_CGSize*) getContentSizeForViewInPopover__;
- (void) setContentSizeForViewInPopover___org_xmlvm_iphone_CGSize :(org_xmlvm_iphone_CGSize*)size;
@end

@interface org_xmlvm_iphone_UIViewController : org_xmlvm_iphone_UIViewControllerImpl
@end
