package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFNetService {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFNetServiceGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFNetServiceRef CFNetServiceCreateCopy( CFAllocatorRef alloc, CFNetServiceRef service) ;
	 */
	public static CFNetService createCopy(CFAllocator alloc, CFNetService service){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFNetServiceCreateDictionaryWithTXTData( CFAllocatorRef alloc, CFDataRef txtRecord) ;
	 */
	public static CFDictionary createDictionaryWithTXTData(CFAllocator alloc, CFData txtRecord){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFNetServiceCreateTXTDataWithDictionary( CFAllocatorRef alloc, CFDictionaryRef keyValuePairs) ;
	 */
	public static CFData createTXTDataWithDictionary(CFAllocator alloc, CFDictionary keyValuePairs){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFNetServiceRef CFNetServiceCreate( CFAllocatorRef alloc, CFStringRef domain, CFStringRef serviceType, CFStringRef name, SInt32 port) ;
	 */
	public CFNetService(CFAllocator alloc, String domain, String serviceType, String name, int port) {}

	/** Default constructor */
	public CFNetService() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFStringRef CFNetServiceGetDomain(CFNetServiceRef theService) ;
	 */
	public String getDomain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFNetServiceGetType(CFNetServiceRef theService) ;
	 */
	public String getType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFNetServiceGetName(CFNetServiceRef theService) ;
	 */
	public String getName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFNetServiceRegisterWithOptions( CFNetServiceRef theService, CFOptionFlags options, CFStreamError * error) ;
	 */
	public byte registerWithOptions(long options, Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFNetServiceResolveWithTimeout( CFNetServiceRef theService, CFTimeInterval timeout, CFStreamError * error) ;
	 */
	public byte resolveWithTimeout(double timeout, Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNetServiceCancel(CFNetServiceRef theService) ;
	 */
	public void cancel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFNetServiceGetTargetHost(CFNetServiceRef theService) ;
	 */
	public String getTargetHost(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SInt32 CFNetServiceGetPortNumber(CFNetServiceRef theService) ;
	 */
	public int getPortNumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFNetServiceGetAddressing(CFNetServiceRef theService) ;
	 */
	public CFArray getAddressing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFNetServiceGetTXTData(CFNetServiceRef theService) ;
	 */
	public CFData getTXTData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFNetServiceSetTXTData( CFNetServiceRef theService, CFDataRef txtRecord) ;
	 */
	public byte setTXTData(CFData txtRecord){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFNetServiceSetClient( CFNetServiceRef theService, CFNetServiceClientCallBack clientCB, CFNetServiceClientContext * clientContext) ;
	 */
	public byte setClient(Object clientCB, Reference<CFNetServiceClientContext> clientContext){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNetServiceScheduleWithRunLoop( CFNetServiceRef theService, CFRunLoopRef runLoop, CFStringRef runLoopMode) ;
	 */
	public void scheduleWithRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNetServiceUnscheduleFromRunLoop( CFNetServiceRef theService, CFRunLoopRef runLoop, CFStringRef runLoopMode) ;
	 */
	public void unscheduleFromRunLoop(CFRunLoop runLoop, String runLoopMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFNetServiceRegister( CFNetServiceRef theService, CFStreamError * error) ;
	 */
	public byte register(Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFNetServiceResolve( CFNetServiceRef theService, CFStreamError * error) ;
	 */
	public byte resolve(Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFNetServiceGetProtocolSpecificInformation(CFNetServiceRef theService) ;
	 */
	public String getProtocolSpecificInformation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFNetServiceSetProtocolSpecificInformation( CFNetServiceRef theService, CFStringRef theInfo) ;
	 */
	public void setProtocolSpecificInformation(String theInfo){
		throw new RuntimeException("Stub");
	}
}
