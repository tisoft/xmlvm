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

#import <GameKit/GKSession.h>

#import "xmlvm.h"
#import "java_util_List.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_NSData.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_NSError.h"
#import "org_xmlvm_iphone_NSErrorHolder.h"

@class org_xmlvm_iphone_GKSessionDelegate;
@class org_xmlvm_iphone_GKDataReceiveHandler;

#define org_xmlvm_iphone_GKSession GKSession

@interface GKSession (cat_org_xmlvm_iphone_GKSession)

- (void) __init_org_xmlvm_iphone_GKSession___java_lang_String_java_lang_String_int :(java_lang_String*)n1 :(java_lang_String*)n2 :(int)n3;
- (org_xmlvm_iphone_GKSessionDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_GKSessionDelegate :(org_xmlvm_iphone_GKSessionDelegate*)n1;
- (int) isAvailable__;
- (void) setAvailable___boolean :(int)n1;
- (double) getDisconnectTimeout__;
- (void) setDisconnectTimeout___double :(double)n1;
- (java_lang_String*) getDisplayName__;
- (java_lang_String*) getPeerID__;
- (java_lang_String*) getSessionID__;
- (int) getSessionMode__;
- (java_util_List*) peersWithConnectionState___int :(int)n1;
- (java_lang_String*) displayNameForPeer___java_lang_String :(java_lang_String*)n1;
- (void) connectToPeer___java_lang_String_double :(java_lang_String*)n1 :(double)n2;
- (void) cancelConnectToPeer___java_lang_String :(java_lang_String*)n1;
- (int) acceptConnectionFromPeer___java_lang_String_org_xmlvm_iphone_NSErrorHolder :(java_lang_String*)n1 :(org_xmlvm_iphone_NSError*)n2;
- (void) denyConnectionFromPeer___java_lang_String :(java_lang_String*)n1;
- (void) setDataReceiveHandler___org_xmlvm_iphone_GKDataReceiveHandler_java_lang_Object :(org_xmlvm_iphone_GKDataReceiveHandler*)n1 :(java_lang_Object*)n2;
- (int) sendData___org_xmlvm_iphone_NSData_java_util_List_int_org_xmlvm_iphone_NSErrorHolder :(org_xmlvm_iphone_NSData*)n1 :(java_util_List*)n2 :(int)n3 :(org_xmlvm_iphone_NSError*)n4;
- (int) sendDataToAllPeers___org_xmlvm_iphone_NSData_int_org_xmlvm_iphone_NSErrorHolder :(org_xmlvm_iphone_NSData*)n1 :(int)n2 :(org_xmlvm_iphone_NSError*)n3;
- (void) disconnectFromAllPeers__;
- (void) disconnectPeerFromAllPeers___java_lang_String :(java_lang_String*)n1;

@end

