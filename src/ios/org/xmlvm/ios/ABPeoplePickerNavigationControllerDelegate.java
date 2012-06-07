package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "ABPeoplePickerNavigationControllerDelegate")
public interface ABPeoplePickerNavigationControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)peoplePickerNavigationControllerDidCancel:(ABPeoplePickerNavigationController *)peoplePicker;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "peoplePickerNavigationControllerDidCancel", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ABPeoplePickerNavigationController")
	})
	public abstract void peoplePickerNavigationControllerDidCancel(ABPeoplePickerNavigationController peoplePicker);

	/**
	 * - (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "peoplePickerNavigationController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ABPeoplePickerNavigationController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ABRecordRef", isStruct = true, name = "shouldContinueAfterSelectingPerson")
	})
	public abstract boolean shouldContinueAfterSelectingPerson(ABPeoplePickerNavigationController peoplePicker, ABRecord person);

	/**
	 * - (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person property:(ABPropertyID)property identifier:(ABMultiValueIdentifier)identifier;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "peoplePickerNavigationController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ABPeoplePickerNavigationController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "ABRecordRef", isStruct = true, name = "shouldContinueAfterSelectingPerson"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "property"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "identifier")
	})
	public abstract boolean shouldContinueAfterSelectingPersonProperty(ABPeoplePickerNavigationController peoplePicker, ABRecord person, int property, int identifier);
}
