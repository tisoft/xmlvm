package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class NSNetServiceBrowserDelegate implements org.xmlvm.ios.NSNetServiceBrowserDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)netServiceBrowserWillSearch:(NSNetServiceBrowser *)aNetServiceBrowser;
	 */
	public void netServiceBrowserWillSearch(NSNetServiceBrowser aNetServiceBrowser){};
	/**
	 * - (void)netServiceBrowserDidStopSearch:(NSNetServiceBrowser *)aNetServiceBrowser;
	 */
	public void netServiceBrowserDidStopSearch(NSNetServiceBrowser aNetServiceBrowser){};
	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didNotSearch:(NSDictionary *)errorDict;
	 */
	public void didNotSearch(NSNetServiceBrowser aNetServiceBrowser, Map errorDict){};
	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didFindDomain:(NSString *)domainString moreComing:(BOOL)moreComing;
	 */
	public void didFindDomain(NSNetServiceBrowser aNetServiceBrowser, String domainString, boolean moreComing){};
	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didFindService:(NSNetService *)aNetService moreComing:(BOOL)moreComing;
	 */
	public void didFindService(NSNetServiceBrowser aNetServiceBrowser, NSNetService aNetService, boolean moreComing){};
	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didRemoveDomain:(NSString *)domainString moreComing:(BOOL)moreComing;
	 */
	public void didRemoveDomain(NSNetServiceBrowser aNetServiceBrowser, String domainString, boolean moreComing){};
	/**
	 * - (void)netServiceBrowser:(NSNetServiceBrowser *)aNetServiceBrowser didRemoveService:(NSNetService *)aNetService moreComing:(BOOL)moreComing;
	 */
	public void didRemoveService(NSNetServiceBrowser aNetServiceBrowser, NSNetService aNetService, boolean moreComing){};}
