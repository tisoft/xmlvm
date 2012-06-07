package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFHost {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFHostGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFHostRef CFHostCreateWithName( CFAllocatorRef allocator, CFStringRef hostname) ;
	 */
	public static CFHost createWithName(CFAllocator allocator, String hostname){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFHostRef CFHostCreateWithAddress( CFAllocatorRef allocator, CFDataRef addr) ;
	 */
	public static CFHost createWithAddress(CFAllocator allocator, CFData addr){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFHostRef CFHostCreateCopy( CFAllocatorRef alloc, CFHostRef host) ;
	 */
	public static CFHost createCopy(CFAllocator alloc, CFHost host){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CFHost() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean CFHostStartInfoResolution( CFHostRef theHost, CFHostInfoType info, CFStreamError * error) ;
	 */
	public byte startInfoResolution(int info, Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFHostGetAddressing( CFHostRef theHost, Boolean * hasBeenResolved) ;
	 */
	public CFArray getAddressing(byte[] hasBeenResolved){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFHostGetNames( CFHostRef theHost, Boolean * hasBeenResolved) ;
	 */
	public CFArray getNames(byte[] hasBeenResolved){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFHostGetReachability( CFHostRef theHost, Boolean * hasBeenResolved) ;
	 */
	public CFData getReachability(byte[] hasBeenResolved){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFHostCancelInfoResolution( CFHostRef theHost, CFHostInfoType info) ;
	 */
	public void cancelInfoResolution(int info){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFHostSetClient( CFHostRef theHost, CFHostClientCallBack clientCB, CFHostClientContext * clientContext) ;
	 */
	public byte setClient(Object clientCB, Reference<CFHostClientContext> clientContext){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFHostScheduleWithRunLoop( CFHostRef theHost, CFRunLoopRef runLoop, CFStringRef runLoopMode) ;
	 */
	public void scheduleWithRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFHostUnscheduleFromRunLoop( CFHostRef theHost, CFRunLoopRef runLoop, CFStringRef runLoopMode) ;
	 */
	public void unscheduleFromRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}
}
