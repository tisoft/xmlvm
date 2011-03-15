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

#import "org_xmlvm_iphone_GKPeerPickerController.h"
#import "org_xmlvm_iphone_GKPeerPickerControllerDelegate.h"

@implementation GKPeerPickerController (cat_org_xmlvm_iphone_GKPeerPickerController)

- (void) __init_org_xmlvm_iphone_GKPeerPickerController__
{
}

- (org_xmlvm_iphone_GKPeerPickerControllerDelegate*) getDelegate__
{
    return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_GKPeerPickerControllerDelegate :(org_xmlvm_iphone_GKPeerPickerControllerDelegate*)deleg
{
    XMLVM_PROPERTY(delegate,deleg)
}

- (int) isVisible__
{
    return [self isVisible];
}

- (int) getConnectionTypesMask__
{
    return [self connectionTypesMask];
}

- (void) setConnectionTypesMask___int :(int)mask
{
    [self setConnectionTypesMask:mask];
}

- (void) show__
{
    [self show];
}

- (void) dismiss__
{
    [self dismiss];
}

@end

