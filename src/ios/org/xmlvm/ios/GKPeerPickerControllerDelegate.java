package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "GKPeerPickerControllerDelegate")
public interface GKPeerPickerControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)peerPickerController:(GKPeerPickerController *)picker didSelectConnectionType:(GKPeerPickerConnectionType)type;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "peerPickerController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKPeerPickerController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "didSelectConnectionType")
	})
	public abstract void didSelectConnectionType(GKPeerPickerController picker, int type);

	/**
	 * - (GKSession *)peerPickerController:(GKPeerPickerController *)picker sessionForConnectionType:(GKPeerPickerConnectionType)type;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "peerPickerController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKPeerPickerController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "sessionForConnectionType")
	})
	public abstract GKSession sessionForConnectionType(GKPeerPickerController picker, int type);

	/**
	 * - (void)peerPickerController:(GKPeerPickerController *)picker didConnectPeer:(NSString *)peerID toSession:(GKSession *)session;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "peerPickerController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKPeerPickerController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didConnectPeer"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKSession", name = "toSession")
	})
	public abstract void didConnectPeer(GKPeerPickerController picker, String peerID, GKSession session);

	/**
	 * - (void)peerPickerControllerDidCancel:(GKPeerPickerController *)picker;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "peerPickerControllerDidCancel", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKPeerPickerController")
	})
	public abstract void peerPickerControllerDidCancel(GKPeerPickerController picker);
}
