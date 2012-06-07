package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "EKEventEditViewDelegate")
public interface EKEventEditViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)eventEditViewController:(EKEventEditViewController *)controller didCompleteWithAction:(EKEventEditViewAction)action;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "eventEditViewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "EKEventEditViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "didCompleteWithAction")
	})
	public abstract void eventEditViewController(EKEventEditViewController controller, int action);

	/**
	 * - (EKCalendar *)eventEditViewControllerDefaultCalendarForNewEvents:(EKEventEditViewController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "eventEditViewControllerDefaultCalendarForNewEvents", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "EKEventEditViewController")
	})
	public abstract EKCalendar eventEditViewControllerDefaultCalendarForNewEvents(EKEventEditViewController controller);
}
