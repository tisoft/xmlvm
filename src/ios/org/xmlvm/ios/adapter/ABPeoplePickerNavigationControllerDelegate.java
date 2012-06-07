package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class ABPeoplePickerNavigationControllerDelegate implements org.xmlvm.ios.ABPeoplePickerNavigationControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)peoplePickerNavigationControllerDidCancel:(ABPeoplePickerNavigationController *)peoplePicker;
	 */
	public void peoplePickerNavigationControllerDidCancel(ABPeoplePickerNavigationController peoplePicker){};
	/**
	 * - (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person;
	 */
	public boolean shouldContinueAfterSelectingPerson(ABPeoplePickerNavigationController peoplePicker, ABRecord person){
		return false;
	}
	/**
	 * - (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person property:(ABPropertyID)property identifier:(ABMultiValueIdentifier)identifier;
	 */
	public boolean shouldContinueAfterSelectingPersonProperty(ABPeoplePickerNavigationController peoplePicker, ABRecord person, int property, int identifier){
		return false;
	}}
