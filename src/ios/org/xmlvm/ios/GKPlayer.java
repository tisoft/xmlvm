package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKPlayer extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (void)loadPlayersForIdentifiers:(NSArray *)identifiers withCompletionHandler:(void(^)(NSArray *players, NSError *error))completionHandler;
	 */
	public static void loadPlayersForIdentifiers(List identifiers, Object completionHandler){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public GKPlayer() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly, retain) NSString *playerID;
	 */
	public String getPlayerID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, copy) NSString *alias;
	 */
	public String getAlias(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) BOOL isFriend;
	 */
	public boolean getIsFriend(){
		throw new RuntimeException("Stub");
	}
}
