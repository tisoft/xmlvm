package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface GKLeaderboardViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)leaderboardViewControllerDidFinish:(GKLeaderboardViewController *)viewController;
	 */
	public abstract void leaderboardViewControllerDidFinish(GKLeaderboardViewController viewController);
}
