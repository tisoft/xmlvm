package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFUUID {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFUUIDGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFUUIDRef CFUUIDCreateWithBytes(CFAllocatorRef alloc, UInt8 byte0, UInt8 byte1, UInt8 byte2, UInt8 byte3, UInt8 byte4, UInt8 byte5, UInt8 byte6, UInt8 byte7, UInt8 byte8, UInt8 byte9, UInt8 byte10, UInt8 byte11, UInt8 byte12, UInt8 byte13, UInt8 byte14, UInt8 byte15);
	 */
	public static CFUUID createWithBytes(CFAllocator alloc, byte byte0, byte byte1, byte byte2, byte byte3, byte byte4, byte byte5, byte byte6, byte byte7, byte byte8, byte byte9, byte byte10, byte byte11, byte byte12, byte byte13, byte byte14, byte byte15){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFUUIDRef CFUUIDCreateFromString(CFAllocatorRef alloc, CFStringRef uuidStr);
	 */
	public static CFUUID createFromString(CFAllocator alloc, String uuidStr){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFUUIDCreateString(CFAllocatorRef alloc, CFUUIDRef uuid);
	 */
	public static String createString(CFAllocator alloc, CFUUID uuid){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFUUIDRef CFUUIDGetConstantUUIDWithBytes(CFAllocatorRef alloc, UInt8 byte0, UInt8 byte1, UInt8 byte2, UInt8 byte3, UInt8 byte4, UInt8 byte5, UInt8 byte6, UInt8 byte7, UInt8 byte8, UInt8 byte9, UInt8 byte10, UInt8 byte11, UInt8 byte12, UInt8 byte13, UInt8 byte14, UInt8 byte15);
	 */
	public static CFUUID getConstantUUIDWithBytes(CFAllocator alloc, byte byte0, byte byte1, byte byte2, byte byte3, byte byte4, byte byte5, byte byte6, byte byte7, byte byte8, byte byte9, byte byte10, byte byte11, byte byte12, byte byte13, byte byte14, byte byte15){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFUUIDRef CFUUIDCreateFromUUIDBytes(CFAllocatorRef alloc, CFUUIDBytes bytes);
	 */
	public static CFUUID createFromUUIDBytes(CFAllocator alloc, CFUUIDBytes bytes){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFUUIDRef CFUUIDCreate(CFAllocatorRef alloc);
	 */
	public CFUUID(CFAllocator alloc) {}

	/** Default constructor */
	public CFUUID() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid);
	 */
	public CFUUIDBytes getUUIDBytes(){
		throw new RuntimeException("Stub");
	}
}
