package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ABPeoplePickerNavigationController extends UINavigationController {

	/*
	 * Constructors
	 */
	public ABPeoplePickerNavigationController(UIViewController rootViewController) {
		super(rootViewController);
	}
	public ABPeoplePickerNavigationController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/** Default constructor */
	public ABPeoplePickerNavigationController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<ABPeoplePickerNavigationControllerDelegate> peoplePickerDelegate;
	 */
	public org.xmlvm.ios.ABPeoplePickerNavigationControllerDelegate getPeoplePickerDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<ABPeoplePickerNavigationControllerDelegate> peoplePickerDelegate;
	 */
	public void setPeoplePickerDelegate(org.xmlvm.ios.ABPeoplePickerNavigationControllerDelegate peoplePickerDelegate){
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
