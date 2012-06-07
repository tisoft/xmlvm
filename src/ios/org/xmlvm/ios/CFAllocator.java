package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={CFAllocatorContext.class})
public class CFAllocator extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFAllocatorGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFAllocatorRef CFAllocatorGetDefault(void);
	 */
	public static CFAllocator getDefault(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFAllocatorRef CFAllocatorCreate(CFAllocatorRef allocator, CFAllocatorContext *context);
	 */
	public CFAllocator(CFAllocator allocator, Reference<CFAllocatorContext> context) {}

	/** Default constructor */
	public CFAllocator() {}

	/*
	 * Instance methods
	 */

	/**
	 * void CFAllocatorSetDefault(CFAllocatorRef allocator);
	 */
	public void setDefault(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void *CFAllocatorAllocate(CFAllocatorRef allocator, CFIndex size, CFOptionFlags hint);
	 */
	public byte[] allocate(long size, long hint){
		throw new RuntimeException("Stub");
	}

	/**
	 * void *CFAllocatorReallocate(CFAllocatorRef allocator, void *ptr, CFIndex newsize, CFOptionFlags hint);
	 */
	public byte[] reallocate(byte[] ptr, long newsize, long hint){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFAllocatorDeallocate(CFAllocatorRef allocator, void *ptr);
	 */
	public void deallocate(byte[] ptr){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFAllocatorGetPreferredSizeForSize(CFAllocatorRef allocator, CFIndex size, CFOptionFlags hint);
	 */
	public long getPreferredSizeForSize(long size, long hint){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFAllocatorGetContext(CFAllocatorRef allocator, CFAllocatorContext *context);
	 */
	public void getContext(Reference<CFAllocatorContext> context){
		throw new RuntimeException("Stub");
	}
}
