package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFNetServiceMonitor {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFNetServiceMonitorGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFNetServiceMonitorRef CFNetServiceMonitorCreate( CFAllocatorRef alloc, CFNetServiceRef theService, CFNetServiceMonitorClientCallBack clientCB, CFNetServiceClientContext * clientContext) ;
	 */
	public CFNetServiceMonitor(CFAllocator alloc, CFNetService theService, Object clientCB, Reference<CFNetServiceClientContext> clientContext) {}

	/** Default constructor */
	public CFNetServiceMonitor() {}

	/*
	 * Instance methods
	 */

	/**
	 * void CFNetServiceMonitorInvalidate(CFNetServiceMonitorRef monitor) ;
	 */
	public void invalidate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFNetServiceMonitorStart( CFNetServiceMonitorRef monitor, CFNetServiceMonitorType recordType, CFStreamError * error) ;
	 */
	public byte start(int recordType, Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNetServiceMonitorStop( CFNetServiceMonitorRef monitor, CFStreamError * error) ;
	 */
	public void stop(Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNetServiceMonitorScheduleWithRunLoop( CFNetServiceMonitorRef monitor, CFRunLoopRef runLoop, CFStringRef runLoopMode) ;
	 */
	public void scheduleWithRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNetServiceMonitorUnscheduleFromRunLoop( CFNetServiceMonitorRef monitor, CFRunLoopRef runLoop, CFStringRef runLoopMode) ;
	 */
	public void unscheduleFromRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}
}
