package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFRunLoopSource {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFRunLoopSourceGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFRunLoopSourceRef CFRunLoopSourceCreate(CFAllocatorRef allocator, CFIndex order, CFRunLoopSourceContext *context);
	 */
	public CFRunLoopSource(CFAllocator allocator, long order, Reference<CFRunLoopSourceContext> context) {}

	/** Default constructor */
	CFRunLoopSource() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFIndex CFRunLoopSourceGetOrder(CFRunLoopSourceRef source);
	 */
	public long getOrder(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopSourceInvalidate(CFRunLoopSourceRef source);
	 */
	public void invalidate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFRunLoopSourceIsValid(CFRunLoopSourceRef source);
	 */
	public byte isValid(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopSourceGetContext(CFRunLoopSourceRef source, CFRunLoopSourceContext *context);
	 */
	public void getContext(Reference<CFRunLoopSourceContext> context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFRunLoopSourceSignal(CFRunLoopSourceRef source);
	 */
	public void signal(){
		throw new RuntimeException("Stub");
	}
}
