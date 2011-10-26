package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIPopoverControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)popoverControllerShouldDismissPopover:(UIPopoverController *)popoverController;
	 */
	public abstract boolean popoverControllerShouldDismissPopover(UIPopoverController popoverController);

	/**
	 * - (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController;
	 */
	public abstract void popoverControllerDidDismissPopover(UIPopoverController popoverController);
}
