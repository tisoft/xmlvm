package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SCNetworkReachability {

	/*
	 * Static methods
	 */

	/**
	 * SCNetworkReachabilityRef SCNetworkReachabilityCreateWithAddress ( CFAllocatorRef allocator, const struct sockaddr *address ) ;
	 */
	public static SCNetworkReachability createWithAddress(CFAllocator allocator, int[] address){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCNetworkReachabilityRef SCNetworkReachabilityCreateWithAddressPair ( CFAllocatorRef allocator, const struct sockaddr *localAddress, const struct sockaddr *remoteAddress ) ;
	 */
	public static SCNetworkReachability createWithAddressPair(CFAllocator allocator, int[] localAddress, int[] remoteAddress){
		throw new RuntimeException("Stub");
	}

	/**
	 * SCNetworkReachabilityRef SCNetworkReachabilityCreateWithName ( CFAllocatorRef allocator, const char *nodename ) ;
	 */
	public static SCNetworkReachability createWithName(CFAllocator allocator, byte[] nodename){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFTypeID SCNetworkReachabilityGetTypeID (void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	SCNetworkReachability() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean SCNetworkReachabilityGetFlags ( SCNetworkReachabilityRef target, SCNetworkReachabilityFlags *flags ) ;
	 */
	public byte getFlags(int[] flags){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkReachabilitySetCallback ( SCNetworkReachabilityRef target, SCNetworkReachabilityCallBack callout, SCNetworkReachabilityContext *context ) ;
	 */
	public byte setCallback(Object callout, Reference<SCNetworkReachabilityContext> context){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkReachabilityScheduleWithRunLoop ( SCNetworkReachabilityRef target, CFRunLoopRef runLoop, CFStringRef runLoopMode ) ;
	 */
	public byte scheduleWithRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkReachabilityUnscheduleFromRunLoop ( SCNetworkReachabilityRef target, CFRunLoopRef runLoop, CFStringRef runLoopMode ) ;
	 */
	public byte unscheduleFromRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean SCNetworkReachabilitySetDispatchQueue ( SCNetworkReachabilityRef target, dispatch_queue_t queue ) ;
	 */
	public byte setDispatchQueue(Object queue){
		throw new RuntimeException("Stub");
	}
}
