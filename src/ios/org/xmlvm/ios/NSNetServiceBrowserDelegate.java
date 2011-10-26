package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSNetServiceBrowserDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)netServiceBrowserWillSearch:(NSNetServiceBrowser *)aNetServiceBrowser;
	 */
	public abstract void netServiceBrowserWillSearch(NSNetServiceBrowser aNetServiceBrowser);

	/**
	 * - (void)netServiceBrowserDidStopSearch:(NSNetServiceBrowser *)aNetServiceBrowser;
	 */
	public abstract void netServiceBrowserDidStopSearch(NSNetServiceBrowser aNetServiceBrowser);

	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didNotSearch:(NSDictionary *)errorDict;
	 */
	public abstract void didNotSearch(NSNetServiceBrowser aNetServiceBrowser, Map errorDict);

	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didFindDomain:(NSString *)domainString moreComing:(BOOL)moreComing;
	 */
	public abstract void didFindDomain(NSNetServiceBrowser aNetServiceBrowser, String domainString, boolean moreComing);

	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didFindService:(NSNetService *)aNetService moreComing:(BOOL)moreComing;
	 */
	public abstract void didFindService(NSNetServiceBrowser aNetServiceBrowser, NSNetService aNetService, boolean moreComing);

	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didRemoveDomain:(NSString *)domainString moreComing:(BOOL)moreComing;
	 */
	public abstract void didRemoveDomain(NSNetServiceBrowser aNetServiceBrowser, String domainString, boolean moreComing);

	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didRemoveService:(NSNetService *)aNetService moreComing:(BOOL)moreComing;
	 */
	public abstract void didRemoveService(NSNetServiceBrowser aNetServiceBrowser, NSNetService aNetService, boolean moreComing);
}
