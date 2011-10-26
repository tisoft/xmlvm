package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface GKMatchDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)match:(GKMatch *)match didReceiveData:(NSData *)data fromPlayer:(NSString *)playerID;
	 */
	public abstract void didReceiveData(GKMatch match, NSData data, String playerID);

	/**
	 * - (void)match:(GKMatch *)match player:(NSString *)playerID didChangeState:(GKPlayerConnectionState)state;
	 */
	public abstract void player(GKMatch match, String playerID, int state);

	/**
	 * - (void)match:(GKMatch *)match connectionWithPlayerFailed:(NSString *)playerID withError:(NSError *)error;
	 */
	public abstract void connectionWithPlayerFailed(GKMatch match, String playerID, NSError error);

	/**
	 * - (void)match:(GKMatch *)match didFailWithError:(NSError *)error;
	 */
	public abstract void didFailWithError(GKMatch match, NSError error);
}
