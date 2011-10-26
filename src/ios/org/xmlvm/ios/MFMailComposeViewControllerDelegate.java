package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface MFMailComposeViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error ;
	 */
	public abstract void mailComposeController(MFMailComposeViewController controller, int result, NSError error);
}
