package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class NSNetServiceDelegate implements org.xmlvm.ios.NSNetServiceDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)netServiceWillPublish:(NSNetService *)sender;
	 */
	public void netServiceWillPublish(NSNetService sender){};
	/**
	 * - (void)netServiceDidPublish:(NSNetService *)sender;
	 */
	public void netServiceDidPublish(NSNetService sender){};
	/**
	 * - (void)netService:(NSNetService *)sender didNotPublish:(NSDictionary *)errorDict;
	 */
	public void didNotPublish(NSNetService sender, Map errorDict){};
	/**
	 * - (void)netServiceWillResolve:(NSNetService *)sender;
	 */
	public void netServiceWillResolve(NSNetService sender){};
	/**
	 * - (void)netServiceDidResolveAddress:(NSNetService *)sender;
	 */
	public void netServiceDidResolveAddress(NSNetService sender){};
	/**
	 * - (void)netService:(NSNetService *)sender didNotResolve:(NSDictionary *)errorDict;
	 */
	public void didNotResolve(NSNetService sender, Map errorDict){};
	/**
	 * - (void)netServiceDidStop:(NSNetService *)sender;
	 */
	public void netServiceDidStop(NSNetService sender){};
	/**
	 * - (void)netService:(NSNetService *)sender didUpdateTXTRecordData:(NSData *)data;
	 */
	public void didUpdateTXTRecordData(NSNetService sender, NSData data){};}
