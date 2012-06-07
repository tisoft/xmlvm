package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UISplitViewControllerDelegate implements org.xmlvm.ios.UISplitViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)splitViewController: (UISplitViewController*)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem*)barButtonItem forPopoverController: (UIPopoverController*)pc;
	 */
	public void willHideViewController(UISplitViewController svc, UIViewController aViewController, UIBarButtonItem barButtonItem, UIPopoverController pc){};
	/**
	 * - (void)splitViewController: (UISplitViewController*)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem;
	 */
	public void willShowViewController(UISplitViewController svc, UIViewController aViewController, UIBarButtonItem barButtonItem){};
	/**
	 * - (void)splitViewController: (UISplitViewController*)svc popoverController: (UIPopoverController*)pc willPresentViewController:(UIViewController *)aViewController;
	 */
	public void popoverController(UISplitViewController svc, UIPopoverController pc, UIViewController aViewController){};}
