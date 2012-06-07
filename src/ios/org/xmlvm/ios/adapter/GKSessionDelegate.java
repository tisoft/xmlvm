package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class GKSessionDelegate implements org.xmlvm.ios.GKSessionDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)session:(GKSession *)session peer:(NSString *)peerID didChangeState:(GKPeerConnectionState)state;
	 */
	public void peer(GKSession session, String peerID, int state){};
	/**
	 * - (void)session:(GKSession *)session didReceiveConnectionRequestFromPeer:(NSString *)peerID;
	 */
	public void didReceiveConnectionRequestFromPeer(GKSession session, String peerID){};
	/**
	 * - (void)session:(GKSession *)session connectionWithPeerFailed:(NSString *)peerID withError:(NSError *)error;
	 */
	public void connectionWithPeerFailed(GKSession session, String peerID, NSError error){};
	/**
	 * - (void)session:(GKSession *)session didFailWithError:(NSError *)error;
	 */
	public void didFailWithError(GKSession session, NSError error){};}
