package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SCVLANInterface extends SCNetworkInterface {

	/*
	 * Static methods
	 */

	/**
	 * CFArrayRef SCVLANInterfaceCopyAll (SCPreferencesRef prefs) ;
	 */
	public static CFArray copyAll(SCPreferences prefs){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCVLANInterfaceCopyAvailablePhysicalInterfaces (void) ;
	 */
	public static CFArray copyAvailablePhysicalInterfaces(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * SCVLANInterfaceRef SCVLANInterfaceCreate (SCPreferencesRef prefs, SCNetworkInterfaceRef physical, CFNumberRef tag) ;
	 */
	public SCVLANInterface(SCPreferences prefs, SCNetworkInterface physical, NSNumber tag) {}

	/** Default constructor */
	SCVLANInterface() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean SCVLANInterfaceRemove (SCVLANInterfaceRef vlan) ;
	 */
	public byte remove(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCNetworkInterfaceRef SCVLANInterfaceGetPhysicalInterface (SCVLANInterfaceRef vlan) ;
	 */
	public SCNetworkInterface getPhysicalInterface(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFNumberRef SCVLANInterfaceGetTag (SCVLANInterfaceRef vlan) ;
	 */
	public NSNumber getTag(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef SCVLANInterfaceGetOptions (SCVLANInterfaceRef vlan) ;
	 */
	public CFDictionary getOptions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCVLANInterfaceSetPhysicalInterfaceAndTag (SCVLANInterfaceRef vlan, SCNetworkInterfaceRef physical, CFNumberRef tag) ;
	 */
	public byte setPhysicalInterfaceAndTag(SCNetworkInterface physical, NSNumber tag){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCVLANInterfaceSetLocalizedDisplayName (SCVLANInterfaceRef vlan, CFStringRef newName) ;
	 */
	public byte setLocalizedDisplayName(String newName){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCVLANInterfaceSetOptions (SCVLANInterfaceRef vlan, CFDictionaryRef newOptions) ;
	 */
	public byte setOptions(CFDictionary newOptions){
		throw new RuntimeException("Stub");
	}
}
