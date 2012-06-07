package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ABPersonViewController extends UIViewController {

	/*
	 * Constructors
	 */
	public ABPersonViewController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/** Default constructor */
	public ABPersonViewController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<ABPersonViewControllerDelegate> personViewDelegate;
	 */
	public org.xmlvm.ios.ABPersonViewControllerDelegate getPersonViewDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<ABPersonViewControllerDelegate> personViewDelegate;
	 */
	public void setPersonViewDelegate(org.xmlvm.ios.ABPersonViewControllerDelegate personViewDelegate){
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

	/**
	 * @property(nonatomic,readwrite) ABRecordRef displayedPerson;
	 */
	public ABRecord getDisplayedPerson(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readwrite) ABRecordRef displayedPerson;
	 */
	public void setDisplayedPerson(ABRecord displayedPerson){
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
	 * @property(nonatomic) BOOL allowsEditing;
	 */
	public boolean getAllowsEditing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsEditing;
	 */
	public void setAllowsEditing(boolean allowsEditing){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL shouldShowLinkedPeople ;
	 */
	public boolean getShouldShowLinkedPeople(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL shouldShowLinkedPeople ;
	 */
	public void setShouldShowLinkedPeople(boolean shouldShowLinkedPeople){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setHighlightedItemForProperty:(ABPropertyID)property withIdentifier:(ABMultiValueIdentifier)identifier;
	 */
	public void setHighlightedItemForProperty(int property, int identifier){
		throw new RuntimeException("Stub");
	}
}
