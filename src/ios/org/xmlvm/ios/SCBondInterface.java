package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SCBondInterface extends SCNetworkInterface {

	/*
	 * Static methods
	 */

	/**
	 * CFArrayRef SCBondInterfaceCopyAll (SCPreferencesRef prefs) ;
	 */
	public static CFArray copyAll(SCPreferences prefs){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCBondInterfaceCopyAvailableMemberInterfaces (SCPreferencesRef prefs) ;
	 */
	public static CFArray copyAvailableMemberInterfaces(SCPreferences prefs){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * SCBondInterfaceRef SCBondInterfaceCreate (SCPreferencesRef prefs) ;
	 */
	public SCBondInterface(SCPreferences prefs) {}

	/** Default constructor */
	SCBondInterface() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean SCBondInterfaceRemove (SCBondInterfaceRef bond) ;
	 */
	public byte remove(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCBondInterfaceGetMemberInterfaces (SCBondInterfaceRef bond) ;
	 */
	public CFArray getMemberInterfaces(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef SCBondInterfaceGetOptions (SCBondInterfaceRef bond) ;
	 */
	public CFDictionary getOptions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCBondInterfaceSetMemberInterfaces (SCBondInterfaceRef bond, CFArrayRef members) ;
	 */
	public byte setMemberInterfaces(CFArray members){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCBondInterfaceSetLocalizedDisplayName (SCBondInterfaceRef bond, CFStringRef newName) ;
	 */
	public byte setLocalizedDisplayName(String newName){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCBondInterfaceSetOptions (SCBondInterfaceRef bond, CFDictionaryRef newOptions) ;
	 */
	public byte setOptions(CFDictionary newOptions){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCBondStatusRef SCBondInterfaceCopyStatus (SCBondInterfaceRef bond) ;
	 */
	public SCBondStatus copyStatus(){
		throw new RuntimeException("Stub");
	}
}
