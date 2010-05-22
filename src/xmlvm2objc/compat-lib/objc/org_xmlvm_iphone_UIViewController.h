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

#import "org_xmlvm_iphone_UIView.h"
#import "java_util_ArrayList.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_UINavigationItem.h"
#import "org_xmlvm_iphone_UIBarButtonItem.h"
@class org_xmlvm_iphone_UINavigationController;
@class org_xmlvm_iphone_UITabBarController;
@class org_xmlvm_iphone_UITabBarItem;
@class org_xmlvm_iphone_UIViewController;


typedef UIViewController org_xmlvm_iphone_UIViewControllerImpl;
@interface UIViewController (cat_org_xmlvm_iphone_UIViewControllerImpl)
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
- (org_xmlvm_iphone_UITabBarController*) getTabBarController__;
- (org_xmlvm_iphone_UITabBarItem*) getTabBarItem__;
- (void) setTabBarItem___org_xmlvm_iphone_UITabBarItem :(org_xmlvm_iphone_UITabBarItem*)n1;
- (java_util_ArrayList*) getToolbarItems__;
- (void) setToolbarItems___java_util_ArrayList :(java_util_ArrayList*)n1;
- (void) setToolbarItems___java_util_ArrayList_boolean :(java_util_ArrayList*)n1 :(int)n2;

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
@end

@interface org_xmlvm_iphone_UIViewController : org_xmlvm_iphone_UIViewControllerImpl
@end


#define UIVIEWCONTROLLER_CALLBACKS - (void) loadView { [self loadView__];}\
- (void) loadView__ { [super loadView]; }\
- (void) viewDidLoad__ { [super viewDidLoad]; }\
- (void) viewDidUnload__ { [super viewDidUnload]; }\
- (void) viewWillAppear___boolean :(int)anim { [super viewWillAppear:anim]; }\
- (void) viewWillDisappear___boolean :(int)anim { [super viewWillDisappear:anim]; }\
- (void) viewDidAppear___boolean :(int)anim{ [super viewDidAppear:anim]; }\
- (void) viewDidDisappear___boolean :(int)anim{ [super viewDidDisappear:anim]; }\
\
- (void) viewDidLoad { [self viewDidLoad__];}\
- (void) viewDidUnload { [self viewDidUnload__]; }\
- (void) viewWillAppear:(BOOL)anim { [self viewWillAppear___boolean:anim]; }\
- (void) viewWillDisappear:(BOOL)anim { [self viewWillDisappear___boolean:anim]; }\
- (void) viewDidAppear:(BOOL)anim { [self viewDidAppear___boolean:anim]; }\
- (void) viewDidDisappear:(BOOL)anim { [self viewDidDisappear___boolean:anim]; }\
\
- (int) shouldAutorotateToInterfaceOrientation___int :(int)orientation {\
return [super shouldAutorotateToInterfaceOrientation:orientation];\
}\
-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)orientation {\
return [self shouldAutorotateToInterfaceOrientation___int:orientation];\
}

