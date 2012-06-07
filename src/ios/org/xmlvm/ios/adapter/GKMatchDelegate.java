package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class GKMatchDelegate implements org.xmlvm.ios.GKMatchDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)match:(GKMatch *)match didReceiveData:(NSData *)data fromPlayer:(NSString *)playerID;
	 */
	public void didReceiveData(GKMatch match, NSData data, String playerID){};
	/**
	 * - (void)match:(GKMatch *)match player:(NSString *)playerID didChangeState:(GKPlayerConnectionState)state;
	 */
	public void player(GKMatch match, String playerID, int state){};
	/**
	 * - (void)match:(GKMatch *)match connectionWithPlayerFailed:(NSString *)playerID withError:(NSError *)error;
	 */
	public void connectionWithPlayerFailed(GKMatch match, String playerID, NSError error){};
	/**
	 * - (void)match:(GKMatch *)match didFailWithError:(NSError *)error;
	 */
	public void didFailWithError(GKMatch match, NSError error){};}
