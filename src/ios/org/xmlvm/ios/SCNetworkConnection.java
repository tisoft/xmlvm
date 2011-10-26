package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SCNetworkConnection {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID SCNetworkConnectionGetTypeID (void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkConnectionCopyUserPreferences ( CFDictionaryRef selectionOptions, CFStringRef *serviceID, CFDictionaryRef *userOptions ) ;
	 */
	public static byte copyUserPreferences(CFDictionary selectionOptions, String serviceID, Reference<CFDictionary> userOptions){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCNetworkConnectionRef SCNetworkConnectionCreateWithServiceID ( CFAllocatorRef allocator, CFStringRef serviceID, SCNetworkConnectionCallBack callout, SCNetworkConnectionContext *context ) ;
	 */
	public static SCNetworkConnection createWithServiceID(CFAllocator allocator, String serviceID, Object callout, Reference<SCNetworkConnectionContext> context){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	SCNetworkConnection() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFStringRef SCNetworkConnectionCopyServiceID ( SCNetworkConnectionRef connection ) ;
	 */
	public String copyServiceID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCNetworkConnectionStatus SCNetworkConnectionGetStatus ( SCNetworkConnectionRef connection ) ;
	 */
	public int getStatus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef SCNetworkConnectionCopyExtendedStatus ( SCNetworkConnectionRef connection ) ;
	 */
	public CFDictionary copyExtendedStatus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef SCNetworkConnectionCopyStatistics ( SCNetworkConnectionRef connection ) ;
	 */
	public CFDictionary copyStatistics(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkConnectionStart ( SCNetworkConnectionRef connection, CFDictionaryRef userOptions, Boolean linger ) ;
	 */
	public byte start(CFDictionary userOptions, byte linger){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkConnectionStop ( SCNetworkConnectionRef connection, Boolean forceDisconnect ) ;
	 */
	public byte stop(byte forceDisconnect){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef SCNetworkConnectionCopyUserOptions ( SCNetworkConnectionRef connection ) ;
	 */
	public CFDictionary copyUserOptions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkConnectionScheduleWithRunLoop ( SCNetworkConnectionRef connection, CFRunLoopRef runLoop, CFStringRef runLoopMode ) ;
	 */
	public byte scheduleWithRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkConnectionUnscheduleFromRunLoop ( SCNetworkConnectionRef connection, CFRunLoopRef runLoop, CFStringRef runLoopMode ) ;
	 */
	public byte unscheduleFromRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkConnectionSetDispatchQueue ( SCNetworkConnectionRef connection, dispatch_queue_t queue ) ;
	 */
	public byte setDispatchQueue(Object queue){
		throw new RuntimeException("Stub");
	}
}
