package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface ABPersonViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)personViewController:(ABPersonViewController *)personViewController shouldPerformDefaultActionForPerson:(ABRecordRef)person property:(ABPropertyID)property identifier:(ABMultiValueIdentifier)identifier;
	 */
	public abstract boolean personViewController(ABPersonViewController personViewController, ABRecord person, int property, int identifier);
}
