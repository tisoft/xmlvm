package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFNumber {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFNumberGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFNumberRef CFNumberCreate(CFAllocatorRef allocator, CFNumberType theType, const void *valuePtr);
	 */
	public CFNumber(CFAllocator allocator, long theType, byte[] valuePtr) {}

	/** Default constructor */
	public CFNumber() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFNumberType CFNumberGetType(CFNumberRef number);
	 */
	public long getType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFNumberGetByteSize(CFNumberRef number);
	 */
	public long getByteSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFNumberIsFloatType(CFNumberRef number);
	 */
	public byte isFloatType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFNumberGetValue(CFNumberRef number, CFNumberType theType, void *valuePtr);
	 */
	public byte getValue(long theType, byte[] valuePtr){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFComparisonResult CFNumberCompare(CFNumberRef number, CFNumberRef otherNumber, void *context);
	 */
	public long compare(NSNumber otherNumber, byte[] context){
		throw new RuntimeException("Stub");
	}
}
