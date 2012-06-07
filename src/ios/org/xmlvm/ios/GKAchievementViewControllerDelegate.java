package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "GKAchievementViewControllerDelegate")
public interface GKAchievementViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)achievementViewControllerDidFinish:(GKAchievementViewController *)viewController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "achievementViewControllerDidFinish", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKAchievementViewController")
	})
	public abstract void achievementViewControllerDidFinish(GKAchievementViewController viewController);
}
