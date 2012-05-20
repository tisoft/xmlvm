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

#import "org_xmlvm_iphone_UISplitViewController.h"
#import "org_xmlvm_iphone_UISplitViewControllerDelegate.h"

@implementation org_xmlvm_iphone_UISplitViewController
UIVIEWCONTROLLER_CALLBACKS
@end


@implementation UISplitViewController (cat_org_xmlvm_iphone_UISplitViewControllerImpl)

- (void) __init_org_xmlvm_iphone_UISplitViewController__
{
}

- (java_util_List*) getViewControllers__
{
    return_XMLVM(viewControllers)
}

- (void) setViewControllers___java_util_List :(java_util_List*)n1
{
    [self setViewControllers:XMLVM_NULL2NIL(n1)];
}

- (org_xmlvm_iphone_UISplitViewControllerDelegate*) getDelegate__
{
    UISplitViewControllerDelegateWrapper * wrapper = [self delegate];
    return [wrapper->delegate retain];
}

- (void) setDelegate___org_xmlvm_iphone_UISplitViewControllerDelegate :(org_xmlvm_iphone_UISplitViewControllerDelegate*)n1
{
    
    UISplitViewControllerDelegateWrapper* wrapper = [[UISplitViewControllerDelegateWrapper alloc] initWithDelegate: XMLVM_NULL2NIL(n1)];
    [self setDelegate: wrapper];
    XMLVM_PROPERTY_WITHCOMMAND(accdelegate, wrapper,)
    [wrapper release];
}

@end

