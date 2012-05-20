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


#import "org_xmlvm_iphone_UISplitViewControllerDelegate.h"
#import "org_xmlvm_iphone_UISplitViewController.h"
#import "org_xmlvm_iphone_NSObject.h"


@implementation UISplitViewControllerDelegateWrapper;

- (id) initWithDelegate: (id<org_xmlvm_iphone_UISplitViewControllerDelegate>) del
{
	[super init];
	delegate = [del retain];
	return self;
}

- (void) dealloc
{
	[delegate release];
	[super dealloc];
}

- (BOOL)splitViewController:(UISplitViewController *)svc shouldHideViewController:(UIViewController *)vc inOrientation:(UIInterfaceOrientation)orientation
{
    return [delegate shouldHideViewController___org_xmlvm_iphone_UISplitViewController_org_xmlvm_iphone_UIViewController_int:svc :vc :orientation];
}

- (void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc
{
    [delegate willHideViewController___org_xmlvm_iphone_UISplitViewController_org_xmlvm_iphone_UIViewController_org_xmlvm_iphone_UIBarButtonItem_org_xmlvm_iphone_UIPopoverController:svc :aViewController :barButtonItem :pc];
}

- (void)splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)button
{
    [delegate willShowViewController___org_xmlvm_iphone_UISplitViewController_org_xmlvm_iphone_UIViewController_org_xmlvm_iphone_UIBarButtonItem:svc :aViewController :button];
}

- (void)splitViewController:(UISplitViewController *)svc popoverController:(UIPopoverController *)pc willPresentViewController:(UIViewController *)aViewController
{
    [delegate popoverController___org_xmlvm_iphone_UISplitViewController_org_xmlvm_iphone_UIPopoverController_org_xmlvm_iphone_UIViewController:svc :pc :aViewController];
}

@end

