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
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_UINavigationController.h"
#import "org_xmlvm_iphone_UIViewController.h"
	
@interface org_xmlvm_iphone_UINavigationControllerDelegate : java_lang_Object <UINavigationControllerDelegate>

- (void) __init_org_xmlvm_iphone_UINavigationControllerDelegate__;
- (void) willShowViewController___org_xmlvm_iphone_UINavigationController_org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UINavigationController*)n1 :(org_xmlvm_iphone_UIViewController*)n2 :(int)n3;
- (void) didShowViewController___org_xmlvm_iphone_UINavigationController_org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UINavigationController*)n1 :(org_xmlvm_iphone_UIViewController*)n2 :(int)n3;

@end

