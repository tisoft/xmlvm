package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "MFMessageComposeViewControllerDelegate")
public interface MFMessageComposeViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "messageComposeViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MFMessageComposeViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "didFinishWithResult")
	})
	public abstract void messageComposeViewController(MFMessageComposeViewController controller, int result);
}
