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

#import "org_xmlvm_iphone_GKSession.h"
#import "org_xmlvm_iphone_GKSessionDelegate.h"
#import "org_xmlvm_iphone_GKDataReceiveHandler.h"


@implementation GKSession (cat_org_xmlvm_iphone_GKSession);

- (void) __init_org_xmlvm_iphone_GKSession___java_lang_String_java_lang_String_int :(java_lang_String*)n1 :(java_lang_String*)n2 :(int)n3
{
    [self initWithSessionID:n1 displayName:n2 sessionMode:n3];
}

- (org_xmlvm_iphone_GKSessionDelegate*) getDelegate__
{
    return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_GKSessionDelegate :(org_xmlvm_iphone_GKSessionDelegate*)deleg
{
    XMLVM_PROPERTY(delegate,deleg)
}

- (int) isAvailable__
{
    return [self isAvailable];
}

- (void) setAvailable___boolean :(int)n1
{
    [self setAvailable:n1];
}

- (double) getDisconnectTimeout__
{
    return [self disconnectTimeout];
}

- (void) setDisconnectTimeout___double :(double)n1
{
    [self setDisconnectTimeout:n1];
}

- (java_lang_String*) getDisplayName__
{
    return_XMLVM(displayName)
}

- (java_lang_String*) getPeerID__
{
    return_XMLVM(peerID)
}

- (java_lang_String*) getSessionID__
{
    return_XMLVM(sessionID)
}

- (int) getSessionMode__
{
    return [self sessionMode];
}

- (java_util_ArrayList*) peersWithConnectionState___int :(int)n1
{
    return_XMLVM(peersWithConnectionState:n1)
}

- (java_lang_String*) displayNameForPeer___java_lang_String :(java_lang_String*)n1
{
    return_XMLVM(displayNameForPeer:n1)
}

- (void) connectToPeer___java_lang_String_double :(java_lang_String*)n1 :(double)n2
{
    [self connectToPeer:n1 withTimeout:n2];
}

- (void) cancelConnectToPeer___java_lang_String :(java_lang_String*)n1
{
    [self cancelConnectToPeer:n1];
}

- (int) acceptConnectionFromPeer___java_lang_String_org_xmlvm_iphone_NSErrorHolder :(java_lang_String*)n1 :(org_xmlvm_iphone_NSErrorHolder*)errholder
{
    org_xmlvm_iphone_NSError** error = errholder == JAVA_NULL ? NULL : &(errholder->error_org_xmlvm_iphone_NSError);
    int res = [self acceptConnectionFromPeer:n1 error:error];
    errholder->error_org_xmlvm_iphone_NSError = XMLVM_NIL2NULL(errholder->error_org_xmlvm_iphone_NSError);
    return res;
}

- (void) denyConnectionFromPeer___java_lang_String :(java_lang_String*)n1
{
    [self denyConnectionFromPeer:n1];
}

- (void) setDataReceiveHandler___org_xmlvm_iphone_GKDataReceiveHandler_java_lang_Object :(org_xmlvm_iphone_GKDataReceiveHandler*)n1 :(java_lang_Object*)n2
{
    [self setDataReceiveHandler:n1 withContext:n2];
}

- (int) sendData___org_xmlvm_iphone_NSData_java_util_ArrayList_int_org_xmlvm_iphone_NSErrorHolder :(org_xmlvm_iphone_NSData*)n1 :(java_util_ArrayList*)n2 :(int)n3 :(org_xmlvm_iphone_NSErrorHolder*)errholder
{
    org_xmlvm_iphone_NSError** error = errholder == JAVA_NULL ? NULL : &(errholder->error_org_xmlvm_iphone_NSError);
    int res = [self sendData:n1 toPeers:n2 withDataMode:n3 error:error];
    errholder->error_org_xmlvm_iphone_NSError = XMLVM_NIL2NULL(errholder->error_org_xmlvm_iphone_NSError);
    return res;
}

- (int) sendDataToAllPeers___org_xmlvm_iphone_NSData_int_org_xmlvm_iphone_NSErrorHolder :(org_xmlvm_iphone_NSData*)n1 :(int)n2 :(org_xmlvm_iphone_NSErrorHolder*)errholder
{
    org_xmlvm_iphone_NSError** error = errholder == JAVA_NULL ? NULL : &(errholder->error_org_xmlvm_iphone_NSError);
    int res = [self sendDataToAllPeers:n1 withDataMode:n2 error:error];
    errholder->error_org_xmlvm_iphone_NSError = XMLVM_NIL2NULL(errholder->error_org_xmlvm_iphone_NSError);
    return res;
}

- (void) disconnectFromAllPeers__
{
    [self disconnectFromAllPeers];
}

- (void) disconnectPeerFromAllPeers___java_lang_String :(java_lang_String*)n1
{
    [self disconnectPeerFromAllPeers:n1];
}

@end

