package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSNetServiceDelegate")
public interface NSNetServiceDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)netServiceWillPublish:(NSNetService *)sender;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netServiceWillPublish", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetService")
	})
	public abstract void netServiceWillPublish(NSNetService sender);

	/**
	 * - (void)netServiceDidPublish:(NSNetService *)sender;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netServiceDidPublish", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetService")
	})
	public abstract void netServiceDidPublish(NSNetService sender);

	/**
	 * - (void)netService:(NSNetService *)sender didNotPublish:(NSDictionary *)errorDict;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netService", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetService"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSDictionary", name = "didNotPublish")
	})
	public abstract void didNotPublish(NSNetService sender, Map errorDict);

	/**
	 * - (void)netServiceWillResolve:(NSNetService *)sender;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netServiceWillResolve", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetService")
	})
	public abstract void netServiceWillResolve(NSNetService sender);

	/**
	 * - (void)netServiceDidResolveAddress:(NSNetService *)sender;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netServiceDidResolveAddress", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetService")
	})
	public abstract void netServiceDidResolveAddress(NSNetService sender);

	/**
	 * - (void)netService:(NSNetService *)sender didNotResolve:(NSDictionary *)errorDict;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netService", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetService"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSDictionary", name = "didNotResolve")
	})
	public abstract void didNotResolve(NSNetService sender, Map errorDict);

	/**
	 * - (void)netServiceDidStop:(NSNetService *)sender;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netServiceDidStop", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetService")
	})
	public abstract void netServiceDidStop(NSNetService sender);

	/**
	 * - (void)netService:(NSNetService *)sender didUpdateTXTRecordData:(NSData *)data;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netService", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetService"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSData", name = "didUpdateTXTRecordData")
	})
	public abstract void didUpdateTXTRecordData(NSNetService sender, NSData data);
}
