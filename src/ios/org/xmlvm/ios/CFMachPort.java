package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFMachPort {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFMachPortGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMachPortRef CFMachPortCreateWithPort(CFAllocatorRef allocator, mach_port_t portNum, CFMachPortCallBack callout, CFMachPortContext *context, Boolean *shouldFreeInfo);
	 */
	public static CFMachPort createWithPort(CFAllocator allocator, int portNum, Object callout, Reference<CFMachPortContext> context, byte[] shouldFreeInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRunLoopSourceRef CFMachPortCreateRunLoopSource(CFAllocatorRef allocator, CFMachPortRef port, CFIndex order);
	 */
	public static CFRunLoopSource createRunLoopSource(CFAllocator allocator, CFMachPort port, long order){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFMachPortRef CFMachPortCreate(CFAllocatorRef allocator, CFMachPortCallBack callout, CFMachPortContext *context, Boolean *shouldFreeInfo);
	 */
	public CFMachPort(CFAllocator allocator, Object callout, Reference<CFMachPortContext> context, byte[] shouldFreeInfo) {}

	/** Default constructor */
	public CFMachPort() {}

	/*
	 * Instance methods
	 */

	/**
	 * mach_port_t CFMachPortGetPort(CFMachPortRef port);
	 */
	public int getPort(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFMachPortGetContext(CFMachPortRef port, CFMachPortContext *context);
	 */
	public void getContext(Reference<CFMachPortContext> context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFMachPortInvalidate(CFMachPortRef port);
	 */
	public void invalidate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFMachPortIsValid(CFMachPortRef port);
	 */
	public byte isValid(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMachPortInvalidationCallBack CFMachPortGetInvalidationCallBack(CFMachPortRef port);
	 */
	public Object getInvalidationCallBack(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFMachPortSetInvalidationCallBack(CFMachPortRef port, CFMachPortInvalidationCallBack callout);
	 */
	public void setInvalidationCallBack(Object callout){
		throw new RuntimeException("Stub");
	}
}
