package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFFileDescriptor {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFFileDescriptorGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRunLoopSourceRef CFFileDescriptorCreateRunLoopSource(CFAllocatorRef allocator, CFFileDescriptorRef f, CFIndex order);
	 */
	public static CFRunLoopSource createRunLoopSource(CFAllocator allocator, CFFileDescriptor f, long order){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFFileDescriptorRef CFFileDescriptorCreate(CFAllocatorRef allocator, CFFileDescriptorNativeDescriptor fd, Boolean closeOnInvalidate, CFFileDescriptorCallBack callout, const CFFileDescriptorContext *context);
	 */
	public CFFileDescriptor(CFAllocator allocator, int fd, byte closeOnInvalidate, Object callout, Reference<CFFileDescriptorContext> context) {}

	/** Default constructor */
	public CFFileDescriptor() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFFileDescriptorNativeDescriptor CFFileDescriptorGetNativeDescriptor(CFFileDescriptorRef f);
	 */
	public int getNativeDescriptor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFFileDescriptorGetContext(CFFileDescriptorRef f, CFFileDescriptorContext *context);
	 */
	public void getContext(Reference<CFFileDescriptorContext> context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFFileDescriptorEnableCallBacks(CFFileDescriptorRef f, CFOptionFlags callBackTypes);
	 */
	public void enableCallBacks(long callBackTypes){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFFileDescriptorDisableCallBacks(CFFileDescriptorRef f, CFOptionFlags callBackTypes);
	 */
	public void disableCallBacks(long callBackTypes){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFFileDescriptorInvalidate(CFFileDescriptorRef f);
	 */
	public void invalidate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFFileDescriptorIsValid(CFFileDescriptorRef f);
	 */
	public byte isValid(){
		throw new RuntimeException("Stub");
	}
}
