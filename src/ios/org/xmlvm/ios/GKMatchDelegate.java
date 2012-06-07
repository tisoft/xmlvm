package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "GKMatchDelegate")
public interface GKMatchDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)match:(GKMatch *)match didReceiveData:(NSData *)data fromPlayer:(NSString *)playerID;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "match", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKMatch"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSData", name = "didReceiveData"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "fromPlayer")
	})
	public abstract void didReceiveData(GKMatch match, NSData data, String playerID);

	/**
	 * - (void)match:(GKMatch *)match player:(NSString *)playerID didChangeState:(GKPlayerConnectionState)state;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "match", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKMatch"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "player"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "didChangeState")
	})
	public abstract void player(GKMatch match, String playerID, int state);

	/**
	 * - (void)match:(GKMatch *)match connectionWithPlayerFailed:(NSString *)playerID withError:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "match", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKMatch"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "connectionWithPlayerFailed"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "withError")
	})
	public abstract void connectionWithPlayerFailed(GKMatch match, String playerID, NSError error);

	/**
	 * - (void)match:(GKMatch *)match didFailWithError:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "match", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKMatch"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "didFailWithError")
	})
	public abstract void didFailWithError(GKMatch match, NSError error);
}
