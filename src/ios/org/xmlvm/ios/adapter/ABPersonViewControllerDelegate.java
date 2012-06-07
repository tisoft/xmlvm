package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class ABPersonViewControllerDelegate implements org.xmlvm.ios.ABPersonViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)personViewController:(ABPersonViewController *)personViewController shouldPerformDefaultActionForPerson:(ABRecordRef)person property:(ABPropertyID)property identifier:(ABMultiValueIdentifier)identifier;
	 */
	public boolean personViewController(ABPersonViewController personViewController, ABRecord person, int property, int identifier){
		return false;
	}}
