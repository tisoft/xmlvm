package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "EKEventViewDelegate")
public interface EKEventViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)eventViewController:(EKEventViewController *)controller didCompleteWithAction:(EKEventViewAction)action ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "eventViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "EKEventViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "didCompleteWithAction")
	})
	public abstract void eventViewController(EKEventViewController controller, int action);
}
