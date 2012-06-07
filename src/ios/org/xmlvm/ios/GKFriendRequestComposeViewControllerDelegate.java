package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "GKFriendRequestComposeViewControllerDelegate")
public interface GKFriendRequestComposeViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)friendRequestComposeViewControllerDidFinish:(GKFriendRequestComposeViewController *)viewController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "friendRequestComposeViewControllerDidFinish", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKFriendRequestComposeViewController")
	})
	public abstract void friendRequestComposeViewControllerDidFinish(GKFriendRequestComposeViewController viewController);
}
