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

#import <GameKit/GKPeerPickerController.h>

#import "xmlvm.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_GKPeerPickerController.h"
#import "org_xmlvm_iphone_GKSession.h"


@interface org_xmlvm_iphone_GKPeerPickerControllerDelegate : java_lang_Object<GKPeerPickerControllerDelegate>

- (void) __init_org_xmlvm_iphone_GKPeerPickerControllerDelegate__;
- (void) didSelectConnectionType___org_xmlvm_iphone_GKPeerPickerController_int :(org_xmlvm_iphone_GKPeerPickerController*)controller :(int)type;
- (org_xmlvm_iphone_GKSession*) sessionForConnectionType___org_xmlvm_iphone_GKPeerPickerController_int :(org_xmlvm_iphone_GKPeerPickerController*)controller :(int)type;
- (void) didConnectPeer___org_xmlvm_iphone_GKPeerPickerController_java_lang_String_org_xmlvm_iphone_GKSession :(org_xmlvm_iphone_GKPeerPickerController*)controller :(java_lang_String*)peerID :(org_xmlvm_iphone_GKSession*)session;
- (void) didCancel___org_xmlvm_iphone_GKPeerPickerController :(org_xmlvm_iphone_GKPeerPickerController*)controller;

@end

