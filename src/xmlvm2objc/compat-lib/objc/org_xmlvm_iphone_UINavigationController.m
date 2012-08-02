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

#import "org_xmlvm_iphone_UINavigationController.h"
#import "org_xmlvm_iphone_UINavigationControllerDelegate.h"



@implementation org_xmlvm_iphone_UINavigationController
UIVIEWCONTROLLER_CALLBACKS
@end



@implementation UINavigationController (cat_org_xmlvm_iphone_UINavigationControllerImpl)

- (void) __init_org_xmlvm_iphone_UINavigationController___org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UIViewController*)viewc {
	[self initWithRootViewController:viewc];
}

- (org_xmlvm_iphone_UIViewController*) getTopViewController__ {
	return_XMLVM(topViewController)
}

- (org_xmlvm_iphone_UIViewController*) getVisibleViewController__ {
	return_XMLVM(visibleViewController)
}

- (java_util_List*) getViewControllers__ {
	return_XMLVM(viewControllers)
}

- (void) setViewControllers___java_util_List :(java_util_List*)list {
	self.viewControllers = list;
}

- (void) setViewControllers___java_util_List_boolean :(java_util_List*)list :(int)anim {
	[self setViewControllers:list animated:anim];
}

- (void) pushViewController___org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UIViewController*)viewc :(int)anim {
	[self pushViewController:viewc animated:anim];
}

- (org_xmlvm_iphone_UIViewController*) popViewControllerAnimated___boolean :(int)anim {
	return_XMLVM(popViewControllerAnimated:anim);
}

- (java_util_List*) popToRootViewControllerAnimated___boolean :(int)anim {
	return_XMLVM(popToRootViewControllerAnimated:anim)
}

- (java_util_List*) popToViewController___org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UIViewController*)viewc :(int)anim {
	return_XMLVM(popToViewController:viewc animated:anim)
}

- (int) isNavigationBarHidden__ {
	return self.navigationBarHidden;
}

- (void) setNavigationBarHidden___boolean :(int)hid {
	self.navigationBarHidden = hid;
}

- (void) setNavigationBarHidden___boolean_boolean :(int)hid :(int)anim {
	[self setNavigationBarHidden:hid animated:anim];
}

- (org_xmlvm_iphone_UINavigationBar*) getNavigationBar__ {
	return_XMLVM(navigationBar)
}

- (int) isToolbarHidden__ {
	return self.toolbarHidden;
}

- (void) setToolbarHidden___boolean :(int)hid {
	self.toolbarHidden = hid;
}

- (void) setToolbarHidden___boolean_boolean :(int)hid :(int)anim {
	[self setToolbarHidden:hid animated:anim];
}

- (org_xmlvm_iphone_UIToolbar*) getToolbar__ {
	return_XMLVM(toolbar)
}

- (void) setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate :(org_xmlvm_iphone_UINavigationControllerDelegate*)newdelegate {
	XMLVM_PROPERTY(delegate, newdelegate)
}

- (org_xmlvm_iphone_UINavigationControllerDelegate*) getNavigationDelegate__ {
	return_XMLVM(delegate)
}

@end

