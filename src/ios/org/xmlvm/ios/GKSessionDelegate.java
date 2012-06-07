package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "GKSessionDelegate")
public interface GKSessionDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)session:(GKSession *)session peer:(NSString *)peerID didChangeState:(GKPeerConnectionState)state;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "session", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKSession"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "peer"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "didChangeState")
	})
	public abstract void peer(GKSession session, String peerID, int state);

	/**
	 * - (void)session:(GKSession *)session didReceiveConnectionRequestFromPeer:(NSString *)peerID;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "session", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKSession"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didReceiveConnectionRequestFromPeer")
	})
	public abstract void didReceiveConnectionRequestFromPeer(GKSession session, String peerID);

	/**
	 * - (void)session:(GKSession *)session connectionWithPeerFailed:(NSString *)peerID withError:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "session", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKSession"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "connectionWithPeerFailed"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "withError")
	})
	public abstract void connectionWithPeerFailed(GKSession session, String peerID, NSError error);

	/**
	 * - (void)session:(GKSession *)session didFailWithError:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "session", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKSession"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "didFailWithError")
	})
	public abstract void didFailWithError(GKSession session, NSError error);
}
