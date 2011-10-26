package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface EKEventViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)eventViewController:(EKEventViewController *)controller didCompleteWithAction:(EKEventViewAction)action ;
	 */
	public abstract void eventViewController(EKEventViewController controller, int action);
}
