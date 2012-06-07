package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SCBondStatus {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID SCBondStatusGetTypeID (void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public SCBondStatus() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFArrayRef SCBondStatusGetMemberInterfaces (SCBondStatusRef bondStatus) ;
	 */
	public CFArray getMemberInterfaces(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef SCBondStatusGetInterfaceStatus (SCBondStatusRef bondStatus, SCNetworkInterfaceRef interface) ;
	 */
	public CFDictionary getInterfaceStatus(SCNetworkInterface interfaceValue){
		throw new RuntimeException("Stub");
	}
}
