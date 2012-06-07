package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "MFMailComposeViewControllerDelegate")
public interface MFMailComposeViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mailComposeController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MFMailComposeViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "didFinishWithResult"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "error")
	})
	public abstract void mailComposeController(MFMailComposeViewController controller, int result, NSError error);
}
