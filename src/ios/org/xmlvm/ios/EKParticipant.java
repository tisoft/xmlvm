package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class EKParticipant extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public EKParticipant() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSURL *URL;
	 */
	public NSURL getURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *name;
	 */
	public String getName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) EKParticipantStatus participantStatus;
	 */
	public int getParticipantStatus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) EKParticipantRole participantRole;
	 */
	public int getParticipantRole(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) EKParticipantType participantType;
	 */
	public int getParticipantType(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (ABRecordRef)ABRecordWithAddressBook:(ABAddressBookRef)addressBook;
	 */
	public ABRecord ABRecordWithAddressBook(ABAddressBook addressBook){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
