package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface GKMatchmakerViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)matchmakerViewControllerWasCancelled:(GKMatchmakerViewController *)viewController;
	 */
	public abstract void matchmakerViewControllerWasCancelled(GKMatchmakerViewController viewController);

	/**
	 * - (void)matchmakerViewController:(GKMatchmakerViewController *)viewController didFailWithError:(NSError *)error;
	 */
	public abstract void didFailWithError(GKMatchmakerViewController viewController, NSError error);

	/**
	 * - (void)matchmakerViewController:(GKMatchmakerViewController *)viewController didFindMatch:(GKMatch *)match;
	 */
	public abstract void didFindMatch(GKMatchmakerViewController viewController, GKMatch match);

	/**
	 * - (void)matchmakerViewController:(GKMatchmakerViewController *)viewController didFindPlayers:(NSArray *)playerIDs;
	 */
	public abstract void didFindPlayers(GKMatchmakerViewController viewController, List playerIDs);
}
