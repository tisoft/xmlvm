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
#import "java_util_List.h"
#import "org_xmlvm_iphone_UITabBarController.h"
#import "org_xmlvm_iphone_UIViewController.h"

	
@interface org_xmlvm_iphone_UITabBarControllerDelegate : java_lang_Object <UITabBarControllerDelegate>

- (void) __init_org_xmlvm_iphone_UITabBarControllerDelegate__;
- (int) shouldSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UITabBarController*)n1 :(org_xmlvm_iphone_UIViewController*)n2;
- (void) didSelectViewController___org_xmlvm_iphone_UITabBarController_org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UITabBarController*)n1 :(org_xmlvm_iphone_UIViewController*)n2;
- (void) willBeginCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_List :(org_xmlvm_iphone_UITabBarController*)n1 :(java_util_List*)n2;
- (void) willEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_List_boolean :(org_xmlvm_iphone_UITabBarController*)n1 :(java_util_List*)n2 :(int)n3;
- (void) didEndCustomizingViewControllers___org_xmlvm_iphone_UITabBarController_java_util_List_boolean :(org_xmlvm_iphone_UITabBarController*)n1 :(java_util_List*)n2 :(int)n3;

@end

