package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKMatchmaker extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (GKMatchmaker*)sharedMatchmaker;
	 */
	public static GKMatchmaker sharedMatchmaker(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	GKMatchmaker() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)findMatchForRequest:(GKMatchRequest *)request withCompletionHandler:(void(^)(GKMatch *match, NSError *error))completionHandler;
	 */
	public void findMatchForRequest(GKMatchRequest request, Object completionHandler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)findPlayersForHostedMatchRequest:(GKMatchRequest *)request withCompletionHandler:(void(^)(NSArray *playerIDs, NSError *error))completionHandler;
	 */
	public void findPlayersForHostedMatchRequest(GKMatchRequest request, Object completionHandler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addPlayersToMatch:(GKMatch *)match matchRequest:(GKMatchRequest *)matchRequest completionHandler:(void (^)(NSError *))completionHandler;
	 */
	public void addPlayersToMatch(GKMatch match, GKMatchRequest matchRequest, Object completionHandler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancel;
	 */
	public void cancel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)queryPlayerGroupActivity:(NSUInteger)playerGroup withCompletionHandler:(void(^)(NSInteger activity, NSError *error))completionHandler;
	 */
	public void queryPlayerGroupActivity(int playerGroup, Object completionHandler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)queryActivityWithCompletionHandler:(void(^)(NSInteger activity, NSError *error))completionHandler;
	 */
	public void queryActivityWithCompletionHandler(Object completionHandler){
		throw new RuntimeException("Stub");
	}
}
