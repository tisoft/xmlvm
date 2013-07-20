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
#import "org_xmlvm_iphone_CGRect.h"
#import "java_util_List.h"
#import "org_xmlvm_iphone_UITabBarItem.h"
@class org_xmlvm_iphone_UITabBarDelegate;

#define org_xmlvm_iphone_UITabBar UITabBar

@interface UITabBar (cat_org_xmlvm_iphone_UITabBar)

- (void) __init_org_xmlvm_iphone_UITabBar__;
- (void) __init_org_xmlvm_iphone_UITabBar___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (org_xmlvm_iphone_UITabBarDelegate*) getTabBarDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UITabBarDelegate :(org_xmlvm_iphone_UITabBarDelegate*)n1;
- (java_util_List*) getItems__;
- (void) setItems___java_util_List :(java_util_List*)n1;
- (void) setItems___java_util_List_boolean :(java_util_List*)n1 :(int)n2;
- (org_xmlvm_iphone_UITabBarItem*) getSelectedItem__;
- (void) setSelectedItem___org_xmlvm_iphone_UITabBarItem :(org_xmlvm_iphone_UITabBarItem*)n1;
- (void) beginCustomizingItems___java_util_List :(java_util_List*)n1;
- (int) endCustomizingAnimated___boolean :(int)n1;
- (int) isCustomizing__;

@end

