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
#import "org_xmlvm_iphone_UIViewController.h"
#import <QuickLook/QuickLook.h>

// For circular include:
@class org_xmlvm_iphone_QLPreviewController;
@class org_xmlvm_iphone_QLPreviewControllerDelegate;
@class java_lang_RuntimeException;
@class org_xmlvm_iphone_QLPreviewControllerDataSource;
@class org_xmlvm_iphone_QLPreviewItem;
@class java_lang_String;
@class org_xmlvm_iphone_UIViewController;


#define org_xmlvm_iphone_QLPreviewControllerImpl QLPreviewController

@interface QLPreviewController (cat_org_xmlvm_iphone_QLPreviewControllerImpl)

+ (int) canPreviewItem___org_xmlvm_iphone_QLPreviewItem :(org_xmlvm_iphone_QLPreviewItem*)n1;
- (void) __init_org_xmlvm_iphone_QLPreviewController__;
- (org_xmlvm_iphone_QLPreviewControllerDataSource*) getDataSource__;
- (void) setDataSource___org_xmlvm_iphone_QLPreviewControllerDataSource :(org_xmlvm_iphone_QLPreviewControllerDataSource*)n1;
- (int) getCurrentPreviewItemIndex__;
- (void) setCurrentPreviewItemIndex___int :(int)n1;
- (org_xmlvm_iphone_QLPreviewItem*) getCurrentPreviewItem__;
- (org_xmlvm_iphone_QLPreviewControllerDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_QLPreviewControllerDelegate :(org_xmlvm_iphone_QLPreviewControllerDelegate*)n1;
- (void) reloadData__;
- (void) refreshCurrentPreviewItem__;

@end

@interface org_xmlvm_iphone_QLPreviewController : org_xmlvm_iphone_QLPreviewControllerImpl
@end
