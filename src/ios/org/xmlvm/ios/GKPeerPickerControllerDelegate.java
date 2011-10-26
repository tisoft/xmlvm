package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface GKPeerPickerControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)peerPickerController:(GKPeerPickerController *)picker didSelectConnectionType:(GKPeerPickerConnectionType)type;
	 */
	public abstract void didSelectConnectionType(GKPeerPickerController picker, int type);

	/**
	 * - (GKSession *)peerPickerController:(GKPeerPickerController *)picker sessionForConnectionType:(GKPeerPickerConnectionType)type;
	 */
	public abstract GKSession sessionForConnectionType(GKPeerPickerController picker, int type);

	/**
	 * - (void)peerPickerController:(GKPeerPickerController *)picker didConnectPeer:(NSString *)peerID toSession:(GKSession *)session;
	 */
	public abstract void didConnectPeer(GKPeerPickerController picker, String peerID, GKSession session);

	/**
	 * - (void)peerPickerControllerDidCancel:(GKPeerPickerController *)picker;
	 */
	public abstract void peerPickerControllerDidCancel(GKPeerPickerController picker);
}
