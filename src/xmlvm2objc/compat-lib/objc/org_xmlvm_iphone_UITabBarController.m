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

#import "org_xmlvm_iphone_UITabBarController.h"
#import "org_xmlvm_iphone_UITabBarControllerDelegate.h"

@implementation org_xmlvm_iphone_UITabBarController
UIVIEWCONTROLLER_CALLBACKS
@end


@implementation UITabBarController (cat_org_xmlvm_iphone_UITabBarControllerImpl)

- (void) __init_org_xmlvm_iphone_UITabBarController__ {
}

- (java_util_List*) getCustomizableViewControllers__ {
	return_XMLVM(customizableViewControllers)
}

- (void) setCustomizableViewControllers___java_util_List :(java_util_List*)n1 {
	self.customizableViewControllers = n1;
}

- (org_xmlvm_iphone_UITabBarControllerDelegate*) getDelegate__ {
	return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate :(org_xmlvm_iphone_UITabBarControllerDelegate*)newdelegate {
	XMLVM_PROPERTY(delegate,newdelegate)
}

- (org_xmlvm_iphone_UINavigationController*) getMoreNavigationController__ {
	return_XMLVM(moreNavigationController)
}

- (org_xmlvm_iphone_UIViewController*) getSelectedViewController__ {
	return_XMLVM(selectedViewController)
}

- (void) setSelectedViewController___org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UIViewController*)n1 {
	self.selectedViewController = n1;
}

- (int) getSelectedIndex__ {
	return self.selectedIndex;
}

- (void) setSelectedIndex___int :(int)n1 {
	self.selectedIndex = n1;
}

- (org_xmlvm_iphone_UITabBar*) getTabBar__ {
	return_XMLVM(tabBar)
}

- (java_util_List*) getViewControllers__ {
	return_XMLVM(viewControllers)
}

- (void) setViewControllers___java_util_List :(java_util_List*)n1 {
	self.viewControllers = n1;
}

- (void) setViewControllers___java_util_List_boolean :(java_util_List*)n1 :(int)n2 {
	[self setViewControllers:n1 animated:n2];
}

@end

