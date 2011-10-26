package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFBinaryHeap {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFBinaryHeapGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFBinaryHeapRef CFBinaryHeapCreateCopy(CFAllocatorRef allocator, CFIndex capacity, CFBinaryHeapRef heap);
	 */
	public static CFBinaryHeap createCopy(CFAllocator allocator, long capacity, CFBinaryHeap heap){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFBinaryHeapRef CFBinaryHeapCreate(CFAllocatorRef allocator, CFIndex capacity, const CFBinaryHeapCallBacks *callBacks, const CFBinaryHeapCompareContext *compareContext);
	 */
	public CFBinaryHeap(CFAllocator allocator, long capacity, Reference<CFBinaryHeapCallBacks> callBacks, Reference<CFBinaryHeapCompareContext> compareContext) {}

	/** Default constructor */
	CFBinaryHeap() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFIndex CFBinaryHeapGetCount(CFBinaryHeapRef heap);
	 */
	public long getCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFBinaryHeapGetCountOfValue(CFBinaryHeapRef heap, const void *value);
	 */
	public long getCountOfValue(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFBinaryHeapContainsValue(CFBinaryHeapRef heap, const void *value);
	 */
	public byte containsValue(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * const void * CFBinaryHeapGetMinimum(CFBinaryHeapRef heap);
	 */
	public byte[] getMinimum(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFBinaryHeapGetMinimumIfPresent(CFBinaryHeapRef heap, const void **value);
	 */
	public byte getMinimumIfPresent(byte[][] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBinaryHeapGetValues(CFBinaryHeapRef heap, const void **values);
	 */
	public void getValues(byte[][] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBinaryHeapApplyFunction(CFBinaryHeapRef heap, CFBinaryHeapApplierFunction applier, void *context);
	 */
	public void applyFunction(Object applier, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBinaryHeapAddValue(CFBinaryHeapRef heap, const void *value);
	 */
	public void addValue(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBinaryHeapRemoveMinimumValue(CFBinaryHeapRef heap);
	 */
	public void removeMinimumValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBinaryHeapRemoveAllValues(CFBinaryHeapRef heap);
	 */
	public void removeAllValues(){
		throw new RuntimeException("Stub");
	}
}
