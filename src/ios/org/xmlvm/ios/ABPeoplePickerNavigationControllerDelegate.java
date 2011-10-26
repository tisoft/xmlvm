package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface ABPeoplePickerNavigationControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)peoplePickerNavigationControllerDidCancel:(ABPeoplePickerNavigationController *)peoplePicker;
	 */
	public abstract void peoplePickerNavigationControllerDidCancel(ABPeoplePickerNavigationController peoplePicker);

	/**
	 * - (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person;
	 */
	public abstract boolean shouldContinueAfterSelectingPerson(ABPeoplePickerNavigationController peoplePicker, ABRecord person);

	/**
	 * - (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person property:(ABPropertyID)property identifier:(ABMultiValueIdentifier)identifier;
	 */
	public abstract boolean shouldContinueAfterSelectingPersonProperty(ABPeoplePickerNavigationController peoplePicker, ABRecord person, int property, int identifier);
}
