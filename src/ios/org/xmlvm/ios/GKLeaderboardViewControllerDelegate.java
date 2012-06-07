package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "GKLeaderboardViewControllerDelegate")
public interface GKLeaderboardViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)leaderboardViewControllerDidFinish:(GKLeaderboardViewController *)viewController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "leaderboardViewControllerDidFinish", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKLeaderboardViewController")
	})
	public abstract void leaderboardViewControllerDidFinish(GKLeaderboardViewController viewController);
}
