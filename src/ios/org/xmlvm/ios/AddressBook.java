package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AddressBook {

	/*
	 * Static methods
	 */

	/**
	 * bool ABPersonSetImageData(ABRecordRef person, CFDataRef imageData, CFErrorRef* error);
	 */
	public static boolean ABPersonSetImageData(ABRecord person, CFData imageData, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef ABPersonCopyLocalizedPropertyName(ABPropertyID property);
	 */
	public static String ABPersonCopyLocalizedPropertyName(int property){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABRecordRef ABPersonCreate(void);
	 */
	public static ABRecord ABPersonCreate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef ABGroupCopyArrayOfAllMembers(ABRecordRef group);
	 */
	public static CFArray ABGroupCopyArrayOfAllMembers(ABRecord group){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABRecordRef ABPersonCreateInSource(ABRecordRef source) ;
	 */
	public static ABRecord ABPersonCreateInSource(ABRecord source){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABGroupRemoveMember(ABRecordRef group, ABRecordRef member, CFErrorRef* error);
	 */
	public static boolean ABGroupRemoveMember(ABRecord group, ABRecord member, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABPersonHasImageData(ABRecordRef person);
	 */
	public static boolean ABPersonHasImageData(ABRecord person){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABPersonCompositeNameFormat ABPersonGetCompositeNameFormat(void);
	 */
	public static int ABPersonGetCompositeNameFormat(){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABPersonSortOrdering ABPersonGetSortOrdering(void);
	 */
	public static int ABPersonGetSortOrdering(){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABPropertyType ABPersonGetTypeOfProperty(ABPropertyID property);
	 */
	public static int ABPersonGetTypeOfProperty(int property){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef ABGroupCopyArrayOfAllMembersWithSortOrdering(ABRecordRef group, ABPersonSortOrdering sortOrdering);
	 */
	public static CFArray ABGroupCopyArrayOfAllMembersWithSortOrdering(ABRecord group, int sortOrdering){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABPersonRemoveImageData(ABRecordRef person, CFErrorRef* error);
	 */
	public static boolean ABPersonRemoveImageData(ABRecord person, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef ABPersonCopyImageDataWithFormat(ABRecordRef person, ABPersonImageFormat format) ;
	 */
	public static CFData ABPersonCopyImageDataWithFormat(ABRecord person, int format){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABRecordRef ABGroupCreateInSource(ABRecordRef source) ;
	 */
	public static ABRecord ABGroupCreateInSource(ABRecord source){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABRecordRef ABGroupCreate(void);
	 */
	public static ABRecord ABGroupCreate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef ABPersonCopyArrayOfAllLinkedPeople(ABRecordRef person) ;
	 */
	public static CFArray ABPersonCopyArrayOfAllLinkedPeople(ABRecord person){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABGroupAddMember(ABRecordRef group, ABRecordRef person, CFErrorRef* error);
	 */
	public static boolean ABGroupAddMember(ABRecord group, ABRecord person, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABRecordRef ABPersonCopySource(ABRecordRef person) ;
	 */
	public static ABRecord ABPersonCopySource(ABRecord person){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFComparisonResult ABPersonComparePeopleByName(ABRecordRef person1, ABRecordRef person2, ABPersonSortOrdering ordering);
	 */
	public static long ABPersonComparePeopleByName(ABRecord person1, ABRecord person2, int ordering){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABRecordRef ABGroupCopySource(ABRecordRef group) ;
	 */
	public static ABRecord ABGroupCopySource(ABRecord group){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef ABPersonCopyImageData(ABRecordRef person);
	 */
	public static CFData ABPersonCopyImageData(ABRecord person){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AddressBook() {}
}
