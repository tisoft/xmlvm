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

package org.xmlvm.iphone;

import java.util.ArrayList;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class GKSession extends NSObject {

    private GKSessionDelegate delegate;
    private boolean available = false;
    private final String displayName;
    private String peerID;
    private final String sessionID;
    private final int sessionMode;
    private double disconnectTimeout;

    public GKSession(String sessionID, String displayName, int gkSessionMode) {
        this.sessionID = sessionID;
        this.displayName = displayName;
        this.sessionMode = gkSessionMode;
    }

    public GKSessionDelegate getDelegate() {
        return delegate;
    }

    public void setDelegate(GKSessionDelegate delegate) {
        this.delegate = delegate;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public double getDisconnectTimeout() {
        return disconnectTimeout;
    }

    public void setDisconnectTimeout(double disconnectTimeout) {
        this.disconnectTimeout = disconnectTimeout;
    }

    public String getDisplayName() {
        return displayName;
    }

    public String getPeerID() {
        return peerID;
    }

    public String getSessionID() {
        return sessionID;
    }

    public int getSessionMode() {
        return sessionMode;
    }

    public ArrayList<String> peersWithConnectionState(int gkPeerConnectionState) {
        // TODO Java implementation
        return null;
    }

    public String displayNameForPeer(String peerID) {
        // TODO Java implementation
        return null;
    }

    public void connectToPeer(String peerID, double timeout) {
        // TODO Java implementation
    }

    public void cancelConnectToPeer(String peerID) {
        // TODO Java implementation
    }

    public boolean acceptConnectionFromPeer(String peerID, NSErrorHolder error) {
        // TODO Java implementation
        return false;
    }

    public void denyConnectionFromPeer(String peerID) {
        // TODO Java implementation        
    }

    public void setDataReceiveHandler(GKDataReceiveHandler handler, Object context) {
        // TODO Java implementation
    }

    public boolean sendData(NSData data, ArrayList<String> peers, int gkSendDataMode, NSErrorHolder error) {
        // TODO Java implementation
        return false;
    }

    public boolean sendDataToAllPeers(NSData data, int gkSendDataMode, NSErrorHolder error) {
        // TODO Java implementation
        return false;
    }

    public void disconnectFromAllPeers() {
        // TODO Java implementation
    }

    public void disconnectPeerFromAllPeers(String peerID) {
        // TODO Java implementation
    }
}
