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




#import "org_xmlvm_iphone_QLPreviewControllerDelegate.h"
#import "java_lang_RuntimeException.h"
#import "org_xmlvm_iphone_QLPreviewControllerDataSource.h"
#import "org_xmlvm_iphone_QLPreviewItem.h"
#import "java_lang_String.h"

#import "org_xmlvm_iphone_QLPreviewController.h"
#import "org_xmlvm_iphone_NSObject.h"



@implementation org_xmlvm_iphone_QLPreviewController
UIVIEWCONTROLLER_CALLBACKS
@end



@implementation QLPreviewController (cat_org_xmlvm_iphone_QLPreviewControllerImpl)


+ (int) canPreviewItem___org_xmlvm_iphone_QLPreviewItem :(org_xmlvm_iphone_QLPreviewItem*)n1
{
    return [QLPreviewController canPreviewItem:n1];
}

- (void) __init_org_xmlvm_iphone_QLPreviewController__
{
}

- (org_xmlvm_iphone_QLPreviewControllerDataSource*) getDataSource__
{
    return_XMLVM(dataSource)
}

- (void) setDataSource___org_xmlvm_iphone_QLPreviewControllerDataSource :(org_xmlvm_iphone_QLPreviewControllerDataSource*)n1
{
    XMLVM_PROPERTY(dataSource, n1)
  }

- (int) getCurrentPreviewItemIndex__
{
    return [self currentPreviewItemIndex];
}

- (void) setCurrentPreviewItemIndex___int :(int)n1
{
    [self setCurrentPreviewItemIndex:n1];
}


- (org_xmlvm_iphone_QLPreviewItem*) getCurrentPreviewItem__
{
    return_XMLVM(currentPreviewItem)
}

- (org_xmlvm_iphone_QLPreviewControllerDelegate*) getDelegate__
{
    return_XMLVM(delegate)
}


- (void) setDelegate___org_xmlvm_iphone_QLPreviewControllerDelegate :(org_xmlvm_iphone_QLPreviewControllerDelegate*)n1
{
    XMLVM_PROPERTY(delegate, n1)
}

- (void) reloadData__
{
    [self reloadData];
}

- (void) refreshCurrentPreviewItem__
{
    [self refreshCurrentPreviewItem];
}

@end

