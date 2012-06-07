package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SCNetworkService {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID SCNetworkServiceGetTypeID (void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCNetworkServiceCopyAll (SCPreferencesRef prefs) ;
	 */
	public static CFArray copyAll(SCPreferences prefs){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCNetworkServiceRef SCNetworkServiceCopy (SCPreferencesRef prefs, CFStringRef serviceID) ;
	 */
	public static SCNetworkService copy(SCPreferences prefs, String serviceID){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * SCNetworkServiceRef SCNetworkServiceCreate (SCPreferencesRef prefs, SCNetworkInterfaceRef interface) ;
	 */
	public SCNetworkService(SCPreferences prefs, SCNetworkInterface interfaceValue) {}

	/** Default constructor */
	public SCNetworkService() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean SCNetworkServiceAddProtocolType (SCNetworkServiceRef service, CFStringRef protocolType) ;
	 */
	public byte addProtocolType(String protocolType){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCNetworkServiceCopyProtocols (SCNetworkServiceRef service) ;
	 */
	public CFArray copyProtocols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkServiceEstablishDefaultConfiguration (SCNetworkServiceRef service) ;
	 */
	public byte establishDefaultConfiguration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkServiceGetEnabled (SCNetworkServiceRef service) ;
	 */
	public byte getEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCNetworkInterfaceRef SCNetworkServiceGetInterface (SCNetworkServiceRef service) ;
	 */
	public SCNetworkInterface getInterface(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCNetworkServiceGetName (SCNetworkServiceRef service) ;
	 */
	public String getName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCNetworkProtocolRef SCNetworkServiceCopyProtocol (SCNetworkServiceRef service, CFStringRef protocolType) ;
	 */
	public SCNetworkProtocol copyProtocol(String protocolType){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCNetworkServiceGetServiceID (SCNetworkServiceRef service) ;
	 */
	public String getServiceID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkServiceRemove (SCNetworkServiceRef service) ;
	 */
	public byte remove(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkServiceRemoveProtocolType (SCNetworkServiceRef service, CFStringRef protocolType) ;
	 */
	public byte removeProtocolType(String protocolType){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkServiceSetEnabled (SCNetworkServiceRef service, Boolean enabled) ;
	 */
	public byte setEnabled(byte enabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkServiceSetName (SCNetworkServiceRef service, CFStringRef name) ;
	 */
	public byte setName(String name){
		throw new RuntimeException("Stub");
	}
}
