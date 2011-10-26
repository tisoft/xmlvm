package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SCNetworkSet {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID SCNetworkSetGetTypeID (void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCNetworkSetCopyAll (SCPreferencesRef prefs) ;
	 */
	public static CFArray copyAll(SCPreferences prefs){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCNetworkSetRef SCNetworkSetCopyCurrent (SCPreferencesRef prefs) ;
	 */
	public static SCNetworkSet copyCurrent(SCPreferences prefs){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCNetworkSetRef SCNetworkSetCopy (SCPreferencesRef prefs, CFStringRef setID) ;
	 */
	public static SCNetworkSet copy(SCPreferences prefs, String setID){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * SCNetworkSetRef SCNetworkSetCreate (SCPreferencesRef prefs) ;
	 */
	public SCNetworkSet(SCPreferences prefs) {}

	/** Default constructor */
	SCNetworkSet() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean SCNetworkSetAddService (SCNetworkSetRef set, SCNetworkServiceRef service) ;
	 */
	public byte addService(SCNetworkService service){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkSetContainsInterface (SCNetworkSetRef set, SCNetworkInterfaceRef interface) ;
	 */
	public byte containsInterface(SCNetworkInterface interfaceValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCNetworkSetCopyServices (SCNetworkSetRef set) ;
	 */
	public CFArray copyServices(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCNetworkSetGetName (SCNetworkSetRef set) ;
	 */
	public String getName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCNetworkSetGetSetID (SCNetworkSetRef set) ;
	 */
	public String getSetID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCNetworkSetGetServiceOrder (SCNetworkSetRef set) ;
	 */
	public CFArray getServiceOrder(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkSetRemove (SCNetworkSetRef set) ;
	 */
	public byte remove(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkSetRemoveService (SCNetworkSetRef set, SCNetworkServiceRef service) ;
	 */
	public byte removeService(SCNetworkService service){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkSetSetCurrent (SCNetworkSetRef set) ;
	 */
	public byte setCurrent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkSetSetName (SCNetworkSetRef set, CFStringRef name) ;
	 */
	public byte setName(String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkSetSetServiceOrder (SCNetworkSetRef set, CFArrayRef newOrder) ;
	 */
	public byte setServiceOrder(CFArray newOrder){
		throw new RuntimeException("Stub");
	}
}
