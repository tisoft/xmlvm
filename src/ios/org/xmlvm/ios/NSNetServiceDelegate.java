package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSNetServiceDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)netServiceWillPublish:(NSNetService *)sender;
	 */
	public abstract void netServiceWillPublish(NSNetService sender);

	/**
	 * - (void)netServiceDidPublish:(NSNetService *)sender;
	 */
	public abstract void netServiceDidPublish(NSNetService sender);

	/**
	 * - (void)netService:(NSNetService *)sender didNotPublish:(NSDictionary *)errorDict;
	 */
	public abstract void didNotPublish(NSNetService sender, Map errorDict);

	/**
	 * - (void)netServiceWillResolve:(NSNetService *)sender;
	 */
	public abstract void netServiceWillResolve(NSNetService sender);

	/**
	 * - (void)netServiceDidResolveAddress:(NSNetService *)sender;
	 */
	public abstract void netServiceDidResolveAddress(NSNetService sender);

	/**
	 * - (void)netService:(NSNetService *)sender didNotResolve:(NSDictionary *)errorDict;
	 */
	public abstract void didNotResolve(NSNetService sender, Map errorDict);

	/**
	 * - (void)netServiceDidStop:(NSNetService *)sender;
	 */
	public abstract void netServiceDidStop(NSNetService sender);

	/**
	 * - (void)netService:(NSNetService *)sender didUpdateTXTRecordData:(NSData *)data;
	 */
	public abstract void didUpdateTXTRecordData(NSNetService sender, NSData data);
}
