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

#import "org_xmlvm_iphone_UITabBar.h"
#import "org_xmlvm_iphone_UITabBarDelegate.h"



@implementation UITabBar (cat_org_xmlvm_iphone_UITabBar)

- (void) __init_org_xmlvm_iphone_UITabBar__ {
}

- (void) __init_org_xmlvm_iphone_UITabBar___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)fr {
	[self setFrame:[fr getCGRect]];
}

- (org_xmlvm_iphone_UITabBarDelegate*) getTabBarDelegate__ {
	return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_UITabBarDelegate :(org_xmlvm_iphone_UITabBarDelegate*)newdelegate {
	XMLVM_PROPERTY(delegate,newdelegate)
}

- (java_util_List*) getItems__ {
	return_XMLVM(items)
}

- (void) setItems___java_util_List :(java_util_List*)n1 {
	self.items = n1;
}

- (void) setItems___java_util_List_boolean :(java_util_List*)list :(int)anim {
	[self setItems:list animated:anim];
}

- (org_xmlvm_iphone_UITabBarItem*) getSelectedItem__ {
	return_XMLVM(selectedItem)
}

- (void) setSelectedItem___org_xmlvm_iphone_UITabBarItem :(org_xmlvm_iphone_UITabBarItem*)item {
	self.selectedItem = item;
}

- (void) beginCustomizingItems___java_util_List :(java_util_List*)list {
	[self beginCustomizingItems:list];
	
}

- (int) endCustomizingAnimated___boolean :(int)anim {
	return [self endCustomizingAnimated:anim];
}

- (int) isCustomizing__ {
	return [self isCustomizing];
}


@end

