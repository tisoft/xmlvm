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
#import "org_xmlvm_iphone_NSObject.h"
#import "org_xmlvm_iphone_UIViewController.h"
#import "org_xmlvm_iphone_UIView.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "java_util_List.h"
#import "org_xmlvm_iphone_UIBarButtonItem.h"
#import "org_xmlvm_iphone_UIView.h"
#import "org_xmlvm_iphone_CGSize.h"

@class org_xmlvm_iphone_UIPopoverControllerDelegate;

#define org_xmlvm_iphone_UIPopoverControllerImpl UIPopoverController

@interface UIPopoverController (cat_org_xmlvm_iphone_UIPopoverControllerImpl)

- (void) __init_org_xmlvm_iphone_UIPopoverController___org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UIViewController*)n1;
- (org_xmlvm_iphone_UIPopoverControllerDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UIPopoverControllerDelegate :(org_xmlvm_iphone_UIPopoverControllerDelegate*)n1;
- (org_xmlvm_iphone_UIViewController*) getContentViewController__;
- (void) setContentViewController___org_xmlvm_iphone_UIViewController :(org_xmlvm_iphone_UIViewController*)n1;
- (org_xmlvm_iphone_CGSize*) getPopoverContentSize__;
- (void) setPopoverContentSize___org_xmlvm_iphone_CGSize :(org_xmlvm_iphone_CGSize*)n1;
- (int) isPopoverVisible__;
- (int) getPopoverArrowDirection__;
- (java_util_List*) getPassthroughViews__;
- (void) setPassthroughViews___java_util_List :(java_util_List*)n1;
- (void) setContentViewController___org_xmlvm_iphone_UIViewController_boolean :(org_xmlvm_iphone_UIViewController*)n1 :(int)n2;
- (void) setPopoverContentSize___org_xmlvm_iphone_CGSize_boolean :(org_xmlvm_iphone_CGSize*)n1 :(int)n2;
- (void) presentPopoverFromRect___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView_int_boolean :(org_xmlvm_iphone_CGRect*)n1 :(org_xmlvm_iphone_UIView*)n2 :(int)n3 :(int)n4;
- (void) presentPopoverFromBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_int_boolean :(org_xmlvm_iphone_UIBarButtonItem*)n1 :(int)n2 :(int)n3;
- (void) dismissPopoverAnimated___boolean :(int)n1;

@end


@interface org_xmlvm_iphone_UIPopoverController : org_xmlvm_iphone_UIPopoverControllerImpl
@end

