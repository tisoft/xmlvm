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

#import "org_xmlvm_iphone_QLPreviewController.h"
#import "org_xmlvm_iphone_QLPreviewItem.h"
#import "org_xmlvm_iphone_NSURL.h"

#import "org_xmlvm_iphone_QLPreviewControllerDelegate.h"
#import "org_xmlvm_iphone_NSObject.h"


@implementation org_xmlvm_iphone_QLPreviewControllerDelegate;


- (void) __init_org_xmlvm_iphone_QLPreviewControllerDelegate__
{
}

- (void) previewControllerWillDismiss:(QLPreviewController *)controller
{
    [self previewControllerWillDismiss___org_xmlvm_iphone_QLPreviewController:controller];
}


- (void) previewControllerDidDismiss:(QLPreviewController *)controller
{
    [self previewControllerDidDismiss___org_xmlvm_iphone_QLPreviewController:controller];
}


- (BOOL) previewController:(QLPreviewController *)controller shouldOpenURL:(NSURL *)url forPreviewItem:(id<QLPreviewItem>)item 
{
    [self shouldOpenURL___org_xmlvm_iphone_QLPreviewController_org_xmlvm_iphone_NSURL_org_xmlvm_iphone_QLPreviewItem:controller :url :item];
}

- (void) previewControllerWillDismiss___org_xmlvm_iphone_QLPreviewController :(org_xmlvm_iphone_QLPreviewController*)n1
{
}

- (void) previewControllerDidDismiss___org_xmlvm_iphone_QLPreviewController :(org_xmlvm_iphone_QLPreviewController*)n1
{
}

- (int) shouldOpenURL___org_xmlvm_iphone_QLPreviewController_org_xmlvm_iphone_NSURL_org_xmlvm_iphone_QLPreviewItem :(org_xmlvm_iphone_QLPreviewController*)n1 :(org_xmlvm_iphone_NSURL*)n2 :(org_xmlvm_iphone_QLPreviewItem*)n3
{
}


@end

