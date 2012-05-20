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
#import "org_xmlvm_iphone_UIViewController.h"
#import "org_xmlvm_iphone_UIBarButtonItem.h"
#import "org_xmlvm_iphone_UIPopoverController.h"
@class org_xmlvm_iphone_UISplitViewController;	

@protocol org_xmlvm_iphone_UISplitViewControllerDelegate

- (int) shouldHideViewController___org_xmlvm_iphone_UISplitViewController_org_xmlvm_iphone_UIViewController_int :(org_xmlvm_iphone_UISplitViewController*)n1 :(org_xmlvm_iphone_UIViewController*)n2 :(int)orientation;

- (void) willHideViewController___org_xmlvm_iphone_UISplitViewController_org_xmlvm_iphone_UIViewController_org_xmlvm_iphone_UIBarButtonItem_org_xmlvm_iphone_UIPopoverController :(org_xmlvm_iphone_UISplitViewController*)n1 :(org_xmlvm_iphone_UIViewController*)n2 :(org_xmlvm_iphone_UIBarButtonItem*)n3 :(org_xmlvm_iphone_UIPopoverController*)n4;

- (void) willShowViewController___org_xmlvm_iphone_UISplitViewController_org_xmlvm_iphone_UIViewController_org_xmlvm_iphone_UIBarButtonItem :(org_xmlvm_iphone_UISplitViewController*)n1 :(org_xmlvm_iphone_UIViewController*)n2 :(org_xmlvm_iphone_UIBarButtonItem*)n3;

- (void) popoverController___org_xmlvm_iphone_UISplitViewController_org_xmlvm_iphone_UIPopoverController_org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UISplitViewController*)n1 :(org_xmlvm_iphone_UIPopoverController*)n2 :(org_xmlvm_iphone_UIViewController*)n3;

@end


@interface UISplitViewControllerDelegateWrapper : NSObject <UISplitViewControllerDelegate> {
@public id<org_xmlvm_iphone_UISplitViewControllerDelegate> delegate;    
}
- (id) initWithDelegate: (id<org_xmlvm_iphone_UISplitViewControllerDelegate>) del;
@end
