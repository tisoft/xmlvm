package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ABRecord extends CFType {

	/*
	 * Constructors
	 */

	/** Default constructor */
	ABRecord() {}

	/*
	 * Instance methods
	 */

	/**
	 * ABRecordID ABRecordGetRecordID(ABRecordRef record);
	 */
	public int getRecordID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * ABRecordType ABRecordGetRecordType(ABRecordRef record);
	 */
	public int getRecordType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeRef ABRecordCopyValue(ABRecordRef record, ABPropertyID property);
	 */
	public byte[] copyValue(int property){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABRecordSetValue(ABRecordRef record, ABPropertyID property, CFTypeRef value, CFErrorRef* error);
	 */
	public boolean setValue(int property, byte[] value, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool ABRecordRemoveValue(ABRecordRef record, ABPropertyID property, CFErrorRef* error);
	 */
	public boolean removeValue(int property, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef ABRecordCopyCompositeName(ABRecordRef record);
	 */
	public String copyCompositeName(){
		throw new RuntimeException("Stub");
	}
}
