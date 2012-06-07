package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class ABUnknownPersonViewControllerDelegate implements org.xmlvm.ios.ABUnknownPersonViewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)unknownPersonViewController:(ABUnknownPersonViewController *)unknownCardViewController didResolveToPerson:(ABRecordRef)person;
	 */
	public void didResolveToPerson(ABUnknownPersonViewController unknownCardViewController, ABRecord person){};
	/**
	 * - (BOOL)unknownPersonViewController:(ABUnknownPersonViewController *)personViewController shouldPerformDefaultActionForPerson:(ABRecordRef)person property:(ABPropertyID)property identifier:(ABMultiValueIdentifier)identifier ;
	 */
	public boolean shouldPerformDefaultActionForPerson(ABUnknownPersonViewController personViewController, ABRecord person, int property, int identifier){
		return false;
	}}
