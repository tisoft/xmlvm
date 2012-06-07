package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class GKPeerPickerControllerDelegate implements org.xmlvm.ios.GKPeerPickerControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)peerPickerController:(GKPeerPickerController *)picker didSelectConnectionType:(GKPeerPickerConnectionType)type;
	 */
	public void didSelectConnectionType(GKPeerPickerController picker, int type){};
	/**
	 * - (GKSession *)peerPickerController:(GKPeerPickerController *)picker sessionForConnectionType:(GKPeerPickerConnectionType)type;
	 */
	public GKSession sessionForConnectionType(GKPeerPickerController picker, int type){
		return null;
	}
	/**
	 * - (void)peerPickerController:(GKPeerPickerController *)picker didConnectPeer:(NSString *)peerID toSession:(GKSession *)session;
	 */
	public void didConnectPeer(GKPeerPickerController picker, String peerID, GKSession session){};
	/**
	 * - (void)peerPickerControllerDidCancel:(GKPeerPickerController *)picker;
	 */
	public void peerPickerControllerDidCancel(GKPeerPickerController picker){};}
