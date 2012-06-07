package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIPopoverControllerDelegate implements org.xmlvm.ios.UIPopoverControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)popoverControllerShouldDismissPopover:(UIPopoverController *)popoverController;
	 */
	public boolean popoverControllerShouldDismissPopover(UIPopoverController popoverController){
		return false;
	}
	/**
	 * - (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController;
	 */
	public void popoverControllerDidDismissPopover(UIPopoverController popoverController){};}
