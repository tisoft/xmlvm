package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKLocalPlayer extends GKPlayer {

	/*
	 * Static methods
	 */

	/**
	 * + (GKLocalPlayer *)localPlayer;
	 */
	public static GKLocalPlayer localPlayer(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	GKLocalPlayer() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly, getter=isAuthenticated) BOOL authenticated;
	 */
	public boolean isAuthenticated(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isUnderage) BOOL underage;
	 */
	public boolean isUnderage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, retain) NSArray *friends;
	 */
	public List getFriends(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)authenticateWithCompletionHandler:(void(^)(NSError *error))completionHandler;
	 */
	public void authenticateWithCompletionHandler(Object completionHandler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)loadFriendsWithCompletionHandler:(void(^)(NSArray *friends, NSError *error))completionHandler;
	 */
	public void loadFriendsWithCompletionHandler(Object completionHandler){
		throw new RuntimeException("Stub");
	}
}
