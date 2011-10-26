package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFArray {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFArrayGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFArrayCreateCopy(CFAllocatorRef allocator, CFArrayRef theArray);
	 */
	public static CFArray createCopy(CFAllocator allocator, CFArray theArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableArrayRef CFArrayCreateMutable(CFAllocatorRef allocator, CFIndex capacity, const CFArrayCallBacks *callBacks);
	 */
	public static CFArray createMutable(CFAllocator allocator, long capacity, Reference<CFArrayCallBacks> callBacks){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableArrayRef CFArrayCreateMutableCopy(CFAllocatorRef allocator, CFIndex capacity, CFArrayRef theArray);
	 */
	public static CFArray createMutableCopy(CFAllocator allocator, long capacity, CFArray theArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFArrayAppendValue(CFMutableArrayRef theArray, const void *value);
	 */
	public static void appendValue(CFArray theArray, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFArrayInsertValueAtIndex(CFMutableArrayRef theArray, CFIndex idx, const void *value);
	 */
	public static void insertValueAtIndex(CFArray theArray, long idx, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFArraySetValueAtIndex(CFMutableArrayRef theArray, CFIndex idx, const void *value);
	 */
	public static void setValueAtIndex(CFArray theArray, long idx, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFArrayRemoveValueAtIndex(CFMutableArrayRef theArray, CFIndex idx);
	 */
	public static void removeValueAtIndex(CFArray theArray, long idx){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFArrayRemoveAllValues(CFMutableArrayRef theArray);
	 */
	public static void removeAllValues(CFArray theArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFArrayReplaceValues(CFMutableArrayRef theArray, CFRange range, const void **newValues, CFIndex newCount);
	 */
	public static void replaceValues(CFArray theArray, CFRange range, byte[][] newValues, long newCount){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFArrayExchangeValuesAtIndices(CFMutableArrayRef theArray, CFIndex idx1, CFIndex idx2);
	 */
	public static void exchangeValuesAtIndices(CFArray theArray, long idx1, long idx2){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFArraySortValues(CFMutableArrayRef theArray, CFRange range, CFComparatorFunction comparator, void *context);
	 */
	public static void sortValues(CFArray theArray, CFRange range, Object comparator, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFArrayAppendArray(CFMutableArrayRef theArray, CFArrayRef otherArray, CFRange otherRange);
	 */
	public static void appendArray(CFArray theArray, CFArray otherArray, CFRange otherRange){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFArrayRef CFArrayCreate(CFAllocatorRef allocator, const void **values, CFIndex numValues, const CFArrayCallBacks *callBacks);
	 */
	public CFArray(CFAllocator allocator, byte[][] values, long numValues, Reference<CFArrayCallBacks> callBacks) {}

	/** Default constructor */
	CFArray() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFIndex CFArrayGetCount(CFArrayRef theArray);
	 */
	public long getCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFArrayGetCountOfValue(CFArrayRef theArray, CFRange range, const void *value);
	 */
	public long getCountOfValue(CFRange range, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFArrayContainsValue(CFArrayRef theArray, CFRange range, const void *value);
	 */
	public byte containsValue(CFRange range, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * const void *CFArrayGetValueAtIndex(CFArrayRef theArray, CFIndex idx);
	 */
	public byte[] getValueAtIndex(long idx){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFArrayGetValues(CFArrayRef theArray, CFRange range, const void **values);
	 */
	public void getValues(CFRange range, byte[][] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFArrayApplyFunction(CFArrayRef theArray, CFRange range, CFArrayApplierFunction applier, void *context);
	 */
	public void applyFunction(CFRange range, Object applier, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFArrayGetFirstIndexOfValue(CFArrayRef theArray, CFRange range, const void *value);
	 */
	public long getFirstIndexOfValue(CFRange range, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFArrayGetLastIndexOfValue(CFArrayRef theArray, CFRange range, const void *value);
	 */
	public long getLastIndexOfValue(CFRange range, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFArrayBSearchValues(CFArrayRef theArray, CFRange range, const void *value, CFComparatorFunction comparator, void *context);
	 */
	public long bSearchValues(CFRange range, byte[] value, Object comparator, byte[] context){
		throw new RuntimeException("Stub");
	}
}
