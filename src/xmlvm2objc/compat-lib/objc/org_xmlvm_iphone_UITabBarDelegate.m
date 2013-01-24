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

#import "org_xmlvm_iphone_UITabBarDelegate.h"


@implementation org_xmlvm_iphone_UITabBarDelegate


- (void) __init_org_xmlvm_iphone_UITabBarDelegate__ {
}

- (void) willBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_List :(org_xmlvm_iphone_UITabBar*)bar :(java_util_List*)list {
	[self tabBar:bar willBeginCustomizingItems:list];
}

- (void) didBeginCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_List :(org_xmlvm_iphone_UITabBar*)bar :(java_util_List*)list {
	[self tabBar:bar didBeginCustomizingItems:list];
}

- (void) willEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_List_boolean :(org_xmlvm_iphone_UITabBar*)bar :(java_util_List*)list :(int)changed{
	[self tabBar:bar willEndCustomizingItems:list changed:changed];
}

- (void) didEndCustomizingItems___org_xmlvm_iphone_UITabBar_java_util_List_boolean :(org_xmlvm_iphone_UITabBar*)bar :(java_util_List*)list :(int)changed {
	[self tabBar:bar didEndCustomizingItems:list changed:changed];
}

- (void) didSelectItem___org_xmlvm_iphone_UITabBar_org_xmlvm_iphone_UITabBarItem :(org_xmlvm_iphone_UITabBar*)bar :(org_xmlvm_iphone_UITabBarItem*)item {
	[self tabBar:bar didSelectItem:item];
}


@end

