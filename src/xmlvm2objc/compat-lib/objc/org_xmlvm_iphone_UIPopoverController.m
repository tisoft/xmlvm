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

#import "org_xmlvm_iphone_UIPopoverControllerDelegate.h"
#import "org_xmlvm_iphone_UIPopoverController.h"


@implementation org_xmlvm_iphone_UIPopoverController
UIVIEWCONTROLLER_CALLBACKS

- (id) init {
    return self;
}

@end



@implementation UIPopoverController (cat_org_xmlvm_iphone_UIPopoverControllerImpl)

- (void) __init_org_xmlvm_iphone_UIPopoverController___org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UIViewController*)n1
{
    [self initWithContentViewController:n1];
}

- (org_xmlvm_iphone_UIPopoverControllerDelegate*) getDelegate__
{
    return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_UIPopoverControllerDelegate :(org_xmlvm_iphone_UIPopoverControllerDelegate*)n1
{
    XMLVM_PROPERTY(delegate, n1)
}

- (org_xmlvm_iphone_UIViewController*) getContentViewController__
{
    return_XMLVM(contentViewController)
}

- (void) setContentViewController___org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UIViewController*)n1
{
    [self setContentViewController:n1];
}

- (org_xmlvm_iphone_CGSize*) getPopoverContentSize__
{
    return [[org_xmlvm_iphone_CGSize alloc] initWithCGSize:[self popoverContentSize]];
}

- (void) setPopoverContentSize___org_xmlvm_iphone_CGSize :(org_xmlvm_iphone_CGSize*)n1
{
    [self setPopoverContentSize:[n1 getCGSize]];
}

- (int) isPopoverVisible__
{
    return [self isPopoverVisible];
}

- (int) getPopoverArrowDirection__
{
    return [self popoverArrowDirection];
}

- (java_util_List*) getPassthroughViews__
{
    return_XMLVM(passthroughViews)
}

- (void) setPassthroughViews___java_util_List :(java_util_List*)n1
{
    [self setPassthroughViews:n1];
}

- (void) setContentViewController___org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UIViewController*)n1 :(int)n2
{
    [self setContentViewController:n1 animated:n2];
}

- (void) setPopoverContentSize___org_xmlvm_iphone_CGSize_boolean :(org_xmlvm_iphone_CGSize*)n1 :(int)n2
{
    [self setPopoverContentSize:[n1 getCGSize] animated:n1];
}

- (void) presentPopoverFromRect___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView_int_boolean :(org_xmlvm_iphone_CGRect*)n1 :(org_xmlvm_iphone_UIView*)n2 :(int)n3 :(int)n4
{
    [self presentPopoverFromRect:[n1 getCGRect] inView:n2 permittedArrowDirections:n3 animated:n4];
}

- (void) presentPopoverFromBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_int_boolean :(org_xmlvm_iphone_UIBarButtonItem*)n1 :(int)n2 :(int)n3
{
    [self presentPopoverFromBarButtonItem:n1 permittedArrowDirections:n2 animated:n3];
}

- (void) dismissPopoverAnimated___boolean :(int)n1
{
    [self dismissPopoverAnimated:n1];
}

@end

