package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UISplitViewControllerDelegate")
public interface UISplitViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)splitViewController: (UISplitViewController*)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem*)barButtonItem forPopoverController: (UIPopoverController*)pc;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "splitViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISplitViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIViewController", name = "willHideViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIBarButtonItem", name = "withBarButtonItem"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPopoverController", name = "forPopoverController")
	})
	public abstract void willHideViewController(UISplitViewController svc, UIViewController aViewController, UIBarButtonItem barButtonItem, UIPopoverController pc);

	/**
	 * - (void)splitViewController: (UISplitViewController*)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "splitViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISplitViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIViewController", name = "willShowViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIBarButtonItem", name = "invalidatingBarButtonItem")
	})
	public abstract void willShowViewController(UISplitViewController svc, UIViewController aViewController, UIBarButtonItem barButtonItem);

	/**
	 * - (void)splitViewController: (UISplitViewController*)svc popoverController: (UIPopoverController*)pc willPresentViewController:(UIViewController *)aViewController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "splitViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISplitViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPopoverController", name = "popoverController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIViewController", name = "willPresentViewController")
	})
	public abstract void popoverController(UISplitViewController svc, UIPopoverController pc, UIViewController aViewController);
}
