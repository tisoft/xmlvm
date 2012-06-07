package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKMatchmakerViewController extends UINavigationController {

	/*
	 * Constructors
	 */
	public GKMatchmakerViewController(UIViewController rootViewController) {
		super(rootViewController);
	}
	public GKMatchmakerViewController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/**
	 * - (id)initWithMatchRequest:(GKMatchRequest *)request;
	 */
	public GKMatchmakerViewController(GKMatchRequest request) {}

	/**
	 * - (id)initWithInvite:(GKInvite *)invite;
	 */
	public GKMatchmakerViewController(GKInvite invite) {}

	/** Default constructor */
	public GKMatchmakerViewController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) id<GKMatchmakerViewControllerDelegate> matchmakerDelegate;
	 */
	public org.xmlvm.ios.GKMatchmakerViewControllerDelegate getMatchmakerDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<GKMatchmakerViewControllerDelegate> matchmakerDelegate;
	 */
	public void setMatchmakerDelegate(org.xmlvm.ios.GKMatchmakerViewControllerDelegate matchmakerDelegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, retain) GKMatchRequest *matchRequest;
	 */
	public GKMatchRequest getMatchRequest(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign, getter=isHosted) BOOL hosted;
	 */
	public boolean isHosted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign, getter=isHosted) BOOL hosted;
	 */
	public void setHosted(boolean hosted){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setHostedPlayerReady:(NSString *)playerID;
	 */
	public void setHostedPlayerReady(String playerID){
		throw new RuntimeException("Stub");
	}
}
