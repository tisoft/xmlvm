package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface GKSessionDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)session:(GKSession *)session peer:(NSString *)peerID didChangeState:(GKPeerConnectionState)state;
	 */
	public abstract void peer(GKSession session, String peerID, int state);

	/**
	 * - (void)session:(GKSession *)session didReceiveConnectionRequestFromPeer:(NSString *)peerID;
	 */
	public abstract void didReceiveConnectionRequestFromPeer(GKSession session, String peerID);

	/**
	 * - (void)session:(GKSession *)session connectionWithPeerFailed:(NSString *)peerID withError:(NSError *)error;
	 */
	public abstract void connectionWithPeerFailed(GKSession session, String peerID, NSError error);

	/**
	 * - (void)session:(GKSession *)session didFailWithError:(NSError *)error;
	 */
	public abstract void didFailWithError(GKSession session, NSError error);
}
