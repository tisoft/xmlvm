package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class EKEventEditViewDelegate implements org.xmlvm.ios.EKEventEditViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)eventEditViewController:(EKEventEditViewController *)controller didCompleteWithAction:(EKEventEditViewAction)action;
	 */
	public void eventEditViewController(EKEventEditViewController controller, int action){};
	/**
	 * - (EKCalendar *)eventEditViewControllerDefaultCalendarForNewEvents:(EKEventEditViewController *)controller;
	 */
	public EKCalendar eventEditViewControllerDefaultCalendarForNewEvents(EKEventEditViewController controller){
		return null;
	}}
