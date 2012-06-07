package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "GKMatchmakerViewControllerDelegate")
public interface GKMatchmakerViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)matchmakerViewControllerWasCancelled:(GKMatchmakerViewController *)viewController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "matchmakerViewControllerWasCancelled", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKMatchmakerViewController")
	})
	public abstract void matchmakerViewControllerWasCancelled(GKMatchmakerViewController viewController);

	/**
	 * - (void)matchmakerViewController:(GKMatchmakerViewController *)viewController didFailWithError:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "matchmakerViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKMatchmakerViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "didFailWithError")
	})
	public abstract void didFailWithError(GKMatchmakerViewController viewController, NSError error);

	/**
	 * - (void)matchmakerViewController:(GKMatchmakerViewController *)viewController didFindMatch:(GKMatch *)match;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "matchmakerViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKMatchmakerViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKMatch", name = "didFindMatch")
	})
	public abstract void didFindMatch(GKMatchmakerViewController viewController, GKMatch match);

	/**
	 * - (void)matchmakerViewController:(GKMatchmakerViewController *)viewController didFindPlayers:(NSArray *)playerIDs;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "matchmakerViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "GKMatchmakerViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "didFindPlayers")
	})
	public abstract void didFindPlayers(GKMatchmakerViewController viewController, List playerIDs);
}
