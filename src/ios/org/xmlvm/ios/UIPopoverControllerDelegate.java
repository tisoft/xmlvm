package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIPopoverControllerDelegate")
public interface UIPopoverControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)popoverControllerShouldDismissPopover:(UIPopoverController *)popoverController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "popoverControllerShouldDismissPopover", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPopoverController")
	})
	public abstract boolean popoverControllerShouldDismissPopover(UIPopoverController popoverController);

	/**
	 * - (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "popoverControllerDidDismissPopover", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPopoverController")
	})
	public abstract void popoverControllerDidDismissPopover(UIPopoverController popoverController);
}
