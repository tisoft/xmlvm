package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ABAddressBook extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFStringRef ABAddressBookCopyLocalizedLabel(CFStringRef label);
	 */
	public static String copyLocalizedLabel(String label){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * ABAddressBookRef ABAddressBookCreate(void);
	 */
	public ABAddressBook() {}

	/*
	 * Instance methods
	 */

	/**
	 * bool ABAddressBookSave(ABAddressBookRef addressBook, CFErrorRef* error);
	 */
	public boolean save(Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABAddressBookHasUnsavedChanges(ABAddressBookRef addressBook);
	 */
	public boolean hasUnsavedChanges(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABAddressBookAddRecord(ABAddressBookRef addressBook, ABRecordRef record, CFErrorRef* error);
	 */
	public boolean addRecord(ABRecord record, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABAddressBookRemoveRecord(ABAddressBookRef addressBook, ABRecordRef record, CFErrorRef* error);
	 */
	public boolean removeRecord(ABRecord record, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * void ABAddressBookRegisterExternalChangeCallback(ABAddressBookRef addressBook, ABExternalChangeCallback callback, void *context);
	 */
	public void registerExternalChangeCallback(Object callback, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void ABAddressBookUnregisterExternalChangeCallback(ABAddressBookRef addressBook, ABExternalChangeCallback callback, void *context);
	 */
	public void unregisterExternalChangeCallback(Object callback, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void ABAddressBookRevert(ABAddressBookRef addressBook);
	 */
	public void revert(){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABRecordRef ABAddressBookGetGroupWithRecordID(ABAddressBookRef addressBook, ABRecordID recordID);
	 */
	public ABRecord getGroupWithRecordID(int recordID){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex ABAddressBookGetGroupCount(ABAddressBookRef addressBook);
	 */
	public long getGroupCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef ABAddressBookCopyArrayOfAllGroups(ABAddressBookRef addressBook);
	 */
	public CFArray copyArrayOfAllGroups(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef ABAddressBookCopyArrayOfAllGroupsInSource(ABAddressBookRef addressBook, ABRecordRef source) ;
	 */
	public CFArray copyArrayOfAllGroupsInSource(ABRecord source){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex ABAddressBookGetPersonCount(ABAddressBookRef addressBook);
	 */
	public long getPersonCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABRecordRef ABAddressBookGetPersonWithRecordID(ABAddressBookRef addressBook, ABRecordID recordID);
	 */
	public ABRecord getPersonWithRecordID(int recordID){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef ABAddressBookCopyArrayOfAllPeople(ABAddressBookRef addressBook);
	 */
	public CFArray copyArrayOfAllPeople(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSource(ABAddressBookRef addressBook, ABRecordRef source) ;
	 */
	public CFArray copyArrayOfAllPeopleInSource(ABRecord source){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(ABAddressBookRef addressBook, ABRecordRef source, ABPersonSortOrdering sortOrdering) ;
	 */
	public CFArray copyArrayOfAllPeopleInSourceWithSortOrdering(ABRecord source, int sortOrdering){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef ABAddressBookCopyPeopleWithName(ABAddressBookRef addressBook, CFStringRef name);
	 */
	public CFArray copyPeopleWithName(String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABRecordRef ABAddressBookCopyDefaultSource(ABAddressBookRef addressBook) ;
	 */
	public ABRecord copyDefaultSource(){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABRecordRef ABAddressBookGetSourceWithRecordID(ABAddressBookRef addressBook, ABRecordID sourceID) ;
	 */
	public ABRecord getSourceWithRecordID(int sourceID){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef ABAddressBookCopyArrayOfAllSources(ABAddressBookRef addressBook) ;
	 */
	public CFArray copyArrayOfAllSources(){
		throw new RuntimeException("Stub");
	}
}
