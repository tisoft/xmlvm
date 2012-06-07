package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SystemConfiguration {

	/*
	 * Static methods
	 */

	/**
	 * UInt8 * DHCPClientPreferencesCopyApplicationOptions (CFStringRef applicationID, CFIndex *count) ;
	 */
	public static byte[] DHCPClientPreferencesCopyApplicationOptions(String applicationID, long[] count){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFErrorRef SCCopyLastError (void) ;
	 */
	public static CFError SCCopyLastError(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CNSetSupportedSSIDs (CFArrayRef ssidArray) ;
	 */
	public static byte CNSetSupportedSSIDs(CFArray ssidArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CNCopySupportedInterfaces (void) ;
	 */
	public static CFArray CNCopySupportedInterfaces(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CNCopyCurrentNetworkInfo (CFStringRef interfaceName) ;
	 */
	public static CFDictionary CNCopyCurrentNetworkInfo(String interfaceName){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDateRef DHCPInfoGetLeaseStartTime (CFDictionaryRef info) ;
	 */
	public static NSDate DHCPInfoGetLeaseStartTime(CFDictionary info){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean DHCPClientPreferencesSetApplicationOptions (CFStringRef applicationID, UInt8 *options, CFIndex count) ;
	 */
	public static byte DHCPClientPreferencesSetApplicationOptions(String applicationID, byte[] options, long count){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkCheckReachabilityByAddress ( const struct sockaddr *address, socklen_t addrlen, SCNetworkConnectionFlags *flags ) ;
	 */
	public static byte SCNetworkCheckReachabilityByAddress(int[] address, int addrlen, int[] flags){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef DHCPInfoGetOptionData (CFDictionaryRef info, UInt8 code) ;
	 */
	public static CFData DHCPInfoGetOptionData(CFDictionary info, byte code){
		throw new RuntimeException("Stub");
	}

	/**
	 * int SCError (void) ;
	 */
	public static int SCError(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CNMarkPortalOnline (CFStringRef interfaceName) ;
	 */
	public static byte CNMarkPortalOnline(String interfaceName){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkCheckReachabilityByName ( const char *nodename, SCNetworkConnectionFlags *flags ) ;
	 */
	public static byte SCNetworkCheckReachabilityByName(byte[] nodename, int[] flags){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CNMarkPortalOffline (CFStringRef interfaceName) ;
	 */
	public static byte CNMarkPortalOffline(String interfaceName){
		throw new RuntimeException("Stub");
	}

	/**
	 * const char * SCErrorString (int status) ;
	 */
	public static byte[] SCErrorString(int status){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public SystemConfiguration() {}
}
