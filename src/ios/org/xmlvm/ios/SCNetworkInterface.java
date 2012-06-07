package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SCNetworkInterface {

	/*
	 * Static methods
	 */

	/**
	 * Boolean SCNetworkInterfaceRefreshConfiguration ( CFStringRef ifName ) ;
	 */
	public static byte refreshConfiguration(String ifName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID SCNetworkInterfaceGetTypeID (void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCNetworkInterfaceCopyAll (void) ;
	 */
	public static CFArray copyAll(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCNetworkInterfaceCopyMediaSubTypes (CFArrayRef available) ;
	 */
	public static CFArray copyMediaSubTypes(CFArray available){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCNetworkInterfaceCopyMediaSubTypeOptions (CFArrayRef available, CFStringRef subType) ;
	 */
	public static CFArray copyMediaSubTypeOptions(CFArray available, String subType){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public SCNetworkInterface() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFArrayRef SCNetworkInterfaceGetSupportedInterfaceTypes (SCNetworkInterfaceRef interface) ;
	 */
	public CFArray getSupportedInterfaceTypes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef SCNetworkInterfaceGetSupportedProtocolTypes (SCNetworkInterfaceRef interface) ;
	 */
	public CFArray getSupportedProtocolTypes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCNetworkInterfaceRef SCNetworkInterfaceCreateWithInterface (SCNetworkInterfaceRef interface, CFStringRef interfaceType) ;
	 */
	public SCNetworkInterface createWithInterface(String interfaceType){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCNetworkInterfaceGetBSDName (SCNetworkInterfaceRef interface) ;
	 */
	public String getBSDName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef SCNetworkInterfaceGetConfiguration (SCNetworkInterfaceRef interface) ;
	 */
	public CFDictionary getConfiguration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef SCNetworkInterfaceGetExtendedConfiguration (SCNetworkInterfaceRef interface, CFStringRef extendedType) ;
	 */
	public CFDictionary getExtendedConfiguration(String extendedType){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCNetworkInterfaceGetHardwareAddressString (SCNetworkInterfaceRef interface) ;
	 */
	public String getHardwareAddressString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCNetworkInterfaceRef SCNetworkInterfaceGetInterface (SCNetworkInterfaceRef interface) ;
	 */
	public SCNetworkInterface getInterface(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCNetworkInterfaceGetInterfaceType (SCNetworkInterfaceRef interface) ;
	 */
	public String getInterfaceType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SCNetworkInterfaceGetLocalizedDisplayName (SCNetworkInterfaceRef interface) ;
	 */
	public String getLocalizedDisplayName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkInterfaceSetConfiguration (SCNetworkInterfaceRef interface, CFDictionaryRef config) ;
	 */
	public byte setConfiguration(CFDictionary config){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkInterfaceSetExtendedConfiguration (SCNetworkInterfaceRef interface, CFStringRef extendedType, CFDictionaryRef config) ;
	 */
	public byte setExtendedConfiguration(String extendedType, CFDictionary config){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkInterfaceCopyMediaOptions (SCNetworkInterfaceRef interface, CFDictionaryRef *current, CFDictionaryRef *active, CFArrayRef *available, Boolean filter) ;
	 */
	public byte copyMediaOptions(Reference<CFDictionary> current, Reference<CFDictionary> active, Reference<CFArray> available, byte filter){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkInterfaceCopyMTU (SCNetworkInterfaceRef interface, int *mtu_cur, int *mtu_min, int *mtu_max) ;
	 */
	public byte copyMTU(int[] mtu_cur, int[] mtu_min, int[] mtu_max){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkInterfaceSetMediaOptions (SCNetworkInterfaceRef interface, CFStringRef subtype, CFArrayRef options) ;
	 */
	public byte setMediaOptions(String subtype, CFArray options){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkInterfaceSetMTU (SCNetworkInterfaceRef interface, int mtu) ;
	 */
	public byte setMTU(int mtu){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkInterfaceForceConfigurationRefresh (SCNetworkInterfaceRef interface) ;
	 */
	public byte forceConfigurationRefresh(){
		throw new RuntimeException("Stub");
	}
}
