package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class GKFriendRequestComposeViewController extends UINavigationController {

	/*
	 * Static methods
	 */

	/**
	 * + (NSUInteger)maxNumberOfRecipients;
	 */
	public static int maxNumberOfRecipients(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	GKFriendRequestComposeViewController() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) id<GKFriendRequestComposeViewControllerDelegate> composeViewDelegate;
	 */
	public GKFriendRequestComposeViewControllerDelegate getComposeViewDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<GKFriendRequestComposeViewControllerDelegate> composeViewDelegate;
	 */
	public void setComposeViewDelegate(GKFriendRequestComposeViewControllerDelegate composeViewDelegate){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setMessage:(NSString *)message;
	 */
	public void setMessage(String message){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addRecipientsWithPlayerIDs:(NSArray *)playerIDs;
	 */
	public void addRecipientsWithPlayerIDs(List playerIDs){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addRecipientsWithEmailAddresses:(NSArray *)emailAddresses;
	 */
	public void addRecipientsWithEmailAddresses(List emailAddresses){
		throw new RuntimeException("Stub");
	}
}
