package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFDictionary {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFDictionaryGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFDictionaryCreateCopy(CFAllocatorRef allocator, CFDictionaryRef theDict);
	 */
	public static CFDictionary createCopy(CFAllocator allocator, CFDictionary theDict){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableDictionaryRef CFDictionaryCreateMutable(CFAllocatorRef allocator, CFIndex capacity, const CFDictionaryKeyCallBacks *keyCallBacks, const CFDictionaryValueCallBacks *valueCallBacks);
	 */
	public static CFDictionary createMutable(CFAllocator allocator, long capacity, Reference<CFDictionaryKeyCallBacks> keyCallBacks, Reference<CFDictionaryValueCallBacks> valueCallBacks){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableDictionaryRef CFDictionaryCreateMutableCopy(CFAllocatorRef allocator, CFIndex capacity, CFDictionaryRef theDict);
	 */
	public static CFDictionary createMutableCopy(CFAllocator allocator, long capacity, CFDictionary theDict){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDictionaryAddValue(CFMutableDictionaryRef theDict, const void *key, const void *value);
	 */
	public static void addValue(CFDictionary theDict, byte[] key, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDictionarySetValue(CFMutableDictionaryRef theDict, const void *key, const void *value);
	 */
	public static void setValue(CFDictionary theDict, byte[] key, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDictionaryReplaceValue(CFMutableDictionaryRef theDict, const void *key, const void *value);
	 */
	public static void replaceValue(CFDictionary theDict, byte[] key, byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDictionaryRemoveValue(CFMutableDictionaryRef theDict, const void *key);
	 */
	public static void removeValue(CFDictionary theDict, byte[] key){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDictionaryRemoveAllValues(CFMutableDictionaryRef theDict);
	 */
	public static void removeAllValues(CFDictionary theDict){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFDictionaryRef CFDictionaryCreate(CFAllocatorRef allocator, const void **keys, const void **values, CFIndex numValues, const CFDictionaryKeyCallBacks *keyCallBacks, const CFDictionaryValueCallBacks *valueCallBacks);
	 */
	public CFDictionary(CFAllocator allocator, byte[][] keys, byte[][] values, long numValues, Reference<CFDictionaryKeyCallBacks> keyCallBacks, Reference<CFDictionaryValueCallBacks> valueCallBacks) {}

	/** Default constructor */
	public CFDictionary() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFIndex CFDictionaryGetCount(CFDictionaryRef theDict);
	 */
	public long getCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFDictionaryGetCountOfKey(CFDictionaryRef theDict, const void *key);
	 */
	public long getCountOfKey(byte[] key){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFDictionaryGetCountOfValue(CFDictionaryRef theDict, const void *value);
	 */
	public long getCountOfValue(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFDictionaryContainsKey(CFDictionaryRef theDict, const void *key);
	 */
	public byte containsKey(byte[] key){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFDictionaryContainsValue(CFDictionaryRef theDict, const void *value);
	 */
	public byte containsValue(byte[] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * const void *CFDictionaryGetValue(CFDictionaryRef theDict, const void *key);
	 */
	public byte[] getValue(byte[] key){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFDictionaryGetValueIfPresent(CFDictionaryRef theDict, const void *key, const void **value);
	 */
	public byte getValueIfPresent(byte[] key, byte[][] value){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDictionaryGetKeysAndValues(CFDictionaryRef theDict, const void **keys, const void **values);
	 */
	public void getKeysAndValues(byte[][] keys, byte[][] values){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDictionaryApplyFunction(CFDictionaryRef theDict, CFDictionaryApplierFunction applier, void *context);
	 */
	public void applyFunction(Object applier, byte[] context){
		throw new RuntimeException("Stub");
	}
}
