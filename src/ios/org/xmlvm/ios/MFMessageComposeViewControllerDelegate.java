package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface MFMessageComposeViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result;
	 */
	public abstract void messageComposeViewController(MFMessageComposeViewController controller, int result);
}
