package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFSet {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFSetGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFSetRef CFSetCreateCopy(CFAllocatorRef allocator, CFSetRef theSet);
	 */
	public static CFSet createCopy(CFAllocator allocator, CFSet theSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableSetRef CFSetCreateMutable(CFAllocatorRef allocator, CFIndex capacity, const CFSetCallBacks *callBacks);
	 */
	public static CFSet createMutable(CFAllocator allocator, long capacity, Reference<CFSetCallBacks> callBacks){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableSetRef CFSetCreateMutableCopy(CFAllocatorRef allocator, CFIndex capacity, CFSetRef theSet);
	 */
	public static CFSet createMutableCopy(CFAllocator allocator, long capacity, CFSet theSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFSetAddValue(CFMutableSetRef theSet, const void *value);
	 */
	public static void addValue(CFSet theSet, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFSetReplaceValue(CFMutableSetRef theSet, const void *value);
	 */
	public static void replaceValue(CFSet theSet, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFSetSetValue(CFMutableSetRef theSet, const void *value);
	 */
	public static void setValue(CFSet theSet, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFSetRemoveValue(CFMutableSetRef theSet, const void *value);
	 */
	public static void removeValue(CFSet theSet, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFSetRemoveAllValues(CFMutableSetRef theSet);
	 */
	public static void removeAllValues(CFSet theSet){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFSetRef CFSetCreate(CFAllocatorRef allocator, const void **values, CFIndex numValues, const CFSetCallBacks *callBacks);
	 */
	public CFSet(CFAllocator allocator, byte[][] values, long numValues, Reference<CFSetCallBacks> callBacks) {}

	/** Default constructor */
	public CFSet() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFIndex CFSetGetCount(CFSetRef theSet);
	 */
	public long getCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFSetGetCountOfValue(CFSetRef theSet, const void *value);
	 */
	public long getCountOfValue(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFSetContainsValue(CFSetRef theSet, const void *value);
	 */
	public byte containsValue(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * const void *CFSetGetValue(CFSetRef theSet, const void *value);
	 */
	public byte[] getValue(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFSetGetValueIfPresent(CFSetRef theSet, const void *candidate, const void **value);
	 */
	public byte getValueIfPresent(byte[] candidate, byte[][] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFSetGetValues(CFSetRef theSet, const void **values);
	 */
	public void getValues(byte[][] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFSetApplyFunction(CFSetRef theSet, CFSetApplierFunction applier, void *context);
	 */
	public void applyFunction(Object applier, byte[] context){
		throw new RuntimeException("Stub");
	}
}
