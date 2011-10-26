package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFBag {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFBagGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFBagRef CFBagCreateCopy(CFAllocatorRef allocator, CFBagRef theBag);
	 */
	public static CFBag createCopy(CFAllocator allocator, CFBag theBag){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableBagRef CFBagCreateMutable(CFAllocatorRef allocator, CFIndex capacity, const CFBagCallBacks *callBacks);
	 */
	public static CFBag createMutable(CFAllocator allocator, long capacity, Reference<CFBagCallBacks> callBacks){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableBagRef CFBagCreateMutableCopy(CFAllocatorRef allocator, CFIndex capacity, CFBagRef theBag);
	 */
	public static CFBag createMutableCopy(CFAllocator allocator, long capacity, CFBag theBag){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBagAddValue(CFMutableBagRef theBag, const void *value);
	 */
	public static void addValue(CFBag theBag, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBagReplaceValue(CFMutableBagRef theBag, const void *value);
	 */
	public static void replaceValue(CFBag theBag, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBagSetValue(CFMutableBagRef theBag, const void *value);
	 */
	public static void setValue(CFBag theBag, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBagRemoveValue(CFMutableBagRef theBag, const void *value);
	 */
	public static void removeValue(CFBag theBag, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBagRemoveAllValues(CFMutableBagRef theBag);
	 */
	public static void removeAllValues(CFBag theBag){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFBagRef CFBagCreate(CFAllocatorRef allocator, const void **values, CFIndex numValues, const CFBagCallBacks *callBacks);
	 */
	public CFBag(CFAllocator allocator, byte[][] values, long numValues, Reference<CFBagCallBacks> callBacks) {}

	/** Default constructor */
	CFBag() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFIndex CFBagGetCount(CFBagRef theBag);
	 */
	public long getCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFBagGetCountOfValue(CFBagRef theBag, const void *value);
	 */
	public long getCountOfValue(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFBagContainsValue(CFBagRef theBag, const void *value);
	 */
	public byte containsValue(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * const void *CFBagGetValue(CFBagRef theBag, const void *value);
	 */
	public byte[] getValue(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFBagGetValueIfPresent(CFBagRef theBag, const void *candidate, const void **value);
	 */
	public byte getValueIfPresent(byte[] candidate, byte[][] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBagGetValues(CFBagRef theBag, const void **values);
	 */
	public void getValues(byte[][] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFBagApplyFunction(CFBagRef theBag, CFBagApplierFunction applier, void *context);
	 */
	public void applyFunction(Object applier, byte[] context){
		throw new RuntimeException("Stub");
	}
}
