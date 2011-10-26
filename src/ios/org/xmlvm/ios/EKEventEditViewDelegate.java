package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface EKEventEditViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)eventEditViewController:(EKEventEditViewController *)controller didCompleteWithAction:(EKEventEditViewAction)action;
	 */
	public abstract void eventEditViewController(EKEventEditViewController controller, int action);

	/**
	 * - (EKCalendar *)eventEditViewControllerDefaultCalendarForNewEvents:(EKEventEditViewController *)controller;
	 */
	public abstract EKCalendar eventEditViewControllerDefaultCalendarForNewEvents(EKEventEditViewController controller);
}
