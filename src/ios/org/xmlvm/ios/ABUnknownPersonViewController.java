package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ABUnknownPersonViewController extends UIViewController {

	/*
	 * Constructors
	 */
	public ABUnknownPersonViewController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/** Default constructor */
	public ABUnknownPersonViewController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<ABUnknownPersonViewControllerDelegate> unknownPersonViewDelegate;
	 */
	public org.xmlvm.ios.ABUnknownPersonViewControllerDelegate getUnknownPersonViewDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<ABUnknownPersonViewControllerDelegate> unknownPersonViewDelegate;
	 */
	public void setUnknownPersonViewDelegate(org.xmlvm.ios.ABUnknownPersonViewControllerDelegate unknownPersonViewDelegate){
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
	 * @property(nonatomic,copy) NSString *alternateName;
	 */
	public String getAlternateName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *alternateName;
	 */
	public void setAlternateName(String alternateName){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *message;
	 */
	public String getMessage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *message;
	 */
	public void setMessage(String message){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsActions;
	 */
	public boolean getAllowsActions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsActions;
	 */
	public void setAllowsActions(boolean allowsActions){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsAddingToAddressBook;
	 */
	public boolean getAllowsAddingToAddressBook(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsAddingToAddressBook;
	 */
	public void setAllowsAddingToAddressBook(boolean allowsAddingToAddressBook){
		throw new RuntimeException("Stub");
	}
}
