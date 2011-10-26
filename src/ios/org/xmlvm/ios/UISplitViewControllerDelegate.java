package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UISplitViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)splitViewController: (UISplitViewController*)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem*)barButtonItem forPopoverController: (UIPopoverController*)pc;
	 */
	public abstract void willHideViewController(UISplitViewController svc, UIViewController aViewController, UIBarButtonItem barButtonItem, UIPopoverController pc);

	/**
	 * - (void)splitViewController: (UISplitViewController*)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem;
	 */
	public abstract void willShowViewController(UISplitViewController svc, UIViewController aViewController, UIBarButtonItem barButtonItem);

	/**
	 * - (void)splitViewController: (UISplitViewController*)svc popoverController: (UIPopoverController*)pc willPresentViewController:(UIViewController *)aViewController;
	 */
	public abstract void popoverController(UISplitViewController svc, UIPopoverController pc, UIViewController aViewController);
}
