package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFNetServiceBrowser {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFNetServiceBrowserGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFNetServiceBrowserRef CFNetServiceBrowserCreate( CFAllocatorRef alloc, CFNetServiceBrowserClientCallBack clientCB, CFNetServiceClientContext * clientContext) ;
	 */
	public CFNetServiceBrowser(CFAllocator alloc, Object clientCB, Reference<CFNetServiceClientContext> clientContext) {}

	/** Default constructor */
	public CFNetServiceBrowser() {}

	/*
	 * Instance methods
	 */

	/**
	 * void CFNetServiceBrowserInvalidate(CFNetServiceBrowserRef browser) ;
	 */
	public void invalidate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFNetServiceBrowserSearchForDomains( CFNetServiceBrowserRef browser, Boolean registrationDomains, CFStreamError * error) ;
	 */
	public byte searchForDomains(byte registrationDomains, Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFNetServiceBrowserSearchForServices( CFNetServiceBrowserRef browser, CFStringRef domain, CFStringRef serviceType, CFStreamError * error) ;
	 */
	public byte searchForServices(String domain, String serviceType, Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNetServiceBrowserStopSearch( CFNetServiceBrowserRef browser, CFStreamError * error) ;
	 */
	public void stopSearch(Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNetServiceBrowserScheduleWithRunLoop( CFNetServiceBrowserRef browser, CFRunLoopRef runLoop, CFStringRef runLoopMode) ;
	 */
	public void scheduleWithRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNetServiceBrowserUnscheduleFromRunLoop( CFNetServiceBrowserRef browser, CFRunLoopRef runLoop, CFStringRef runLoopMode) ;
	 */
	public void unscheduleFromRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}
}
