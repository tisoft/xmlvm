package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFData {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFDataGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFDataCreateWithBytesNoCopy(CFAllocatorRef allocator, const UInt8 *bytes, CFIndex length, CFAllocatorRef bytesDeallocator);
	 */
	public static CFData createWithBytesNoCopy(CFAllocator allocator, byte[] bytes, long length, CFAllocator bytesDeallocator){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFDataCreateCopy(CFAllocatorRef allocator, CFDataRef theData);
	 */
	public static CFData createCopy(CFAllocator allocator, CFData theData){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableDataRef CFDataCreateMutable(CFAllocatorRef allocator, CFIndex capacity);
	 */
	public static CFData createMutable(CFAllocator allocator, long capacity){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFMutableDataRef CFDataCreateMutableCopy(CFAllocatorRef allocator, CFIndex capacity, CFDataRef theData);
	 */
	public static CFData createMutableCopy(CFAllocator allocator, long capacity, CFData theData){
		throw new RuntimeException("Stub");
	}

	/**
	 * UInt8 *CFDataGetMutableBytePtr(CFMutableDataRef theData);
	 */
	public static byte[] getMutableBytePtr(CFData theData){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDataSetLength(CFMutableDataRef theData, CFIndex length);
	 */
	public static void setLength(CFData theData, long length){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDataIncreaseLength(CFMutableDataRef theData, CFIndex extraLength);
	 */
	public static void increaseLength(CFData theData, long extraLength){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDataAppendBytes(CFMutableDataRef theData, const UInt8 *bytes, CFIndex length);
	 */
	public static void appendBytes(CFData theData, byte[] bytes, long length){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDataReplaceBytes(CFMutableDataRef theData, CFRange range, const UInt8 *newBytes, CFIndex newLength);
	 */
	public static void replaceBytes(CFData theData, CFRange range, byte[] newBytes, long newLength){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDataDeleteBytes(CFMutableDataRef theData, CFRange range);
	 */
	public static void deleteBytes(CFData theData, CFRange range){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFDataRef CFDataCreate(CFAllocatorRef allocator, const UInt8 *bytes, CFIndex length);
	 */
	public CFData(CFAllocator allocator, byte[] bytes, long length) {}

	/** Default constructor */
	CFData() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFIndex CFDataGetLength(CFDataRef theData);
	 */
	public long getLength(){
		throw new RuntimeException("Stub");
	}

	/**
	 * const UInt8 *CFDataGetBytePtr(CFDataRef theData);
	 */
	public byte[] getBytePtr(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void CFDataGetBytes(CFDataRef theData, CFRange range, UInt8 *buffer);
	 */
	public void getBytes(CFRange range, byte[] buffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRange CFDataFind(CFDataRef theData, CFDataRef dataToFind, CFRange searchRange, CFDataSearchFlags compareOptions) ;
	 */
	public CFRange find(CFData dataToFind, CFRange searchRange, long compareOptions){
		throw new RuntimeException("Stub");
	}
}
