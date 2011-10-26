package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface ABUnknownPersonViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)unknownPersonViewController:(ABUnknownPersonViewController *)unknownCardViewController didResolveToPerson:(ABRecordRef)person;
	 */
	public abstract void didResolveToPerson(ABUnknownPersonViewController unknownCardViewController, ABRecord person);

	/**
	 * - (BOOL)unknownPersonViewController:(ABUnknownPersonViewController *)personViewController shouldPerformDefaultActionForPerson:(ABRecordRef)person property:(ABPropertyID)property identifier:(ABMultiValueIdentifier)identifier ;
	 */
	public abstract boolean shouldPerformDefaultActionForPerson(ABUnknownPersonViewController personViewController, ABRecord person, int property, int identifier);
}
