package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSNetServiceBrowserDelegate")
public interface NSNetServiceBrowserDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)netServiceBrowserWillSearch:(NSNetServiceBrowser *)aNetServiceBrowser;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netServiceBrowserWillSearch", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetServiceBrowser")
	})
	public abstract void netServiceBrowserWillSearch(NSNetServiceBrowser aNetServiceBrowser);

	/**
	 * - (void)netServiceBrowserDidStopSearch:(NSNetServiceBrowser *)aNetServiceBrowser;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netServiceBrowserDidStopSearch", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetServiceBrowser")
	})
	public abstract void netServiceBrowserDidStopSearch(NSNetServiceBrowser aNetServiceBrowser);

	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didNotSearch:(NSDictionary *)errorDict;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netServiceBrowser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetServiceBrowser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSDictionary", name = "didNotSearch")
	})
	public abstract void didNotSearch(NSNetServiceBrowser aNetServiceBrowser, Map errorDict);

	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didFindDomain:(NSString *)domainString moreComing:(BOOL)moreComing;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netServiceBrowser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetServiceBrowser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didFindDomain"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "moreComing")
	})
	public abstract void didFindDomain(NSNetServiceBrowser aNetServiceBrowser, String domainString, boolean moreComing);

	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didFindService:(NSNetService *)aNetService moreComing:(BOOL)moreComing;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netServiceBrowser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetServiceBrowser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetService", name = "didFindService"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "moreComing")
	})
	public abstract void didFindService(NSNetServiceBrowser aNetServiceBrowser, NSNetService aNetService, boolean moreComing);

	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didRemoveDomain:(NSString *)domainString moreComing:(BOOL)moreComing;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netServiceBrowser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetServiceBrowser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didRemoveDomain"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "moreComing")
	})
	public abstract void didRemoveDomain(NSNetServiceBrowser aNetServiceBrowser, String domainString, boolean moreComing);

	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didRemoveService:(NSNetService *)aNetService moreComing:(BOOL)moreComing;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "netServiceBrowser", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetServiceBrowser"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSNetService", name = "didRemoveService"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "moreComing")
	})
	public abstract void didRemoveService(NSNetServiceBrowser aNetServiceBrowser, NSNetService aNetService, boolean moreComing);
}
