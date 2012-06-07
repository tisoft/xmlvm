package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKLeaderboardViewController extends UINavigationController {

	/*
	 * Constructors
	 */
	public GKLeaderboardViewController(UIViewController rootViewController) {
		super(rootViewController);
	}
	public GKLeaderboardViewController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/** Default constructor */
	public GKLeaderboardViewController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) GKLeaderboardTimeScope timeScope;
	 */
	public int getTimeScope(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) GKLeaderboardTimeScope timeScope;
	 */
	public void setTimeScope(int timeScope){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) NSString *category;
	 */
	public String getCategory(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) NSString *category;
	 */
	public void setCategory(String category){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id <GKLeaderboardViewControllerDelegate> leaderboardDelegate;
	 */
	public org.xmlvm.ios.GKLeaderboardViewControllerDelegate getLeaderboardDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id <GKLeaderboardViewControllerDelegate> leaderboardDelegate;
	 */
	public void setLeaderboardDelegate(org.xmlvm.ios.GKLeaderboardViewControllerDelegate leaderboardDelegate){
		throw new RuntimeException("Stub");
	}
}
