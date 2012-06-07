package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class GKMatchmakerViewControllerDelegate implements org.xmlvm.ios.GKMatchmakerViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)matchmakerViewControllerWasCancelled:(GKMatchmakerViewController *)viewController;
	 */
	public void matchmakerViewControllerWasCancelled(GKMatchmakerViewController viewController){};
	/**
	 * - (void)matchmakerViewController:(GKMatchmakerViewController *)viewController didFailWithError:(NSError *)error;
	 */
	public void didFailWithError(GKMatchmakerViewController viewController, NSError error){};
	/**
	 * - (void)matchmakerViewController:(GKMatchmakerViewController *)viewController didFindMatch:(GKMatch *)match;
	 */
	public void didFindMatch(GKMatchmakerViewController viewController, GKMatch match){};
	/**
	 * - (void)matchmakerViewController:(GKMatchmakerViewController *)viewController didFindPlayers:(NSArray *)playerIDs;
	 */
	public void didFindPlayers(GKMatchmakerViewController viewController, List playerIDs){};}
