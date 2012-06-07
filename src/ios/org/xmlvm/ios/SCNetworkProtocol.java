package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SCNetworkProtocol {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID SCNetworkProtocolGetTypeID (void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public SCNetworkProtocol() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFDictionaryRef SCNetworkProtocolGetConfiguration (SCNetworkProtocolRef protocol) ;
	 */
	public CFDictionary getConfiguration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkProtocolGetEnabled (SCNetworkProtocolRef protocol) ;
	 */
	public byte getEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCNetworkProtocolGetProtocolType (SCNetworkProtocolRef protocol) ;
	 */
	public String getProtocolType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkProtocolSetConfiguration (SCNetworkProtocolRef protocol, CFDictionaryRef config) ;
	 */
	public byte setConfiguration(CFDictionary config){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkProtocolSetEnabled (SCNetworkProtocolRef protocol, Boolean enabled) ;
	 */
	public byte setEnabled(byte enabled){
		throw new RuntimeException("Stub");
	}
}
