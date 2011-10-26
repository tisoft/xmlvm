package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ABPeoplePickerNavigationController extends UINavigationController {

	/*
	 * Constructors
	 */

	/** Default constructor */
	ABPeoplePickerNavigationController() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<ABPeoplePickerNavigationControllerDelegate> peoplePickerDelegate;
	 */
	public ABPeoplePickerNavigationControllerDelegate getPeoplePickerDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<ABPeoplePickerNavigationControllerDelegate> peoplePickerDelegate;
	 */
	public void setPeoplePickerDelegate(ABPeoplePickerNavigationControllerDelegate peoplePickerDelegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *displayedProperties;
	 */
	public List getDisplayedProperties(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *displayedProperties;
	 */
	public void setDisplayedProperties(List displayedProperties){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readwrite) ABAddressBookRef addressBook;
	 */
	public ABAddressBook getAddressBook(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readwrite) ABAddressBookRef addressBook;
	 */
	public void setAddressBook(ABAddressBook addressBook){
		throw new RuntimeException("Stub");
	}
}
