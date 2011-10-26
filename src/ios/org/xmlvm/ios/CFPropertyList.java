package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFPropertyList extends CFType {

	/*
	 * Static methods
	 */

	/**
	 * CFPropertyListRef CFPropertyListCreateFromXMLData(CFAllocatorRef allocator, CFDataRef xmlData, CFOptionFlags mutabilityOption, CFStringRef *errorString);
	 */
	public static CFPropertyList createFromXMLData(CFAllocator allocator, CFData xmlData, long mutabilityOption, String errorString){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFPropertyListCreateXMLData(CFAllocatorRef allocator, CFPropertyListRef propertyList);
	 */
	public static CFData createXMLData(CFAllocator allocator, CFPropertyList propertyList){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFPropertyListRef CFPropertyListCreateDeepCopy(CFAllocatorRef allocator, CFPropertyListRef propertyList, CFOptionFlags mutabilityOption);
	 */
	public static CFPropertyList createDeepCopy(CFAllocator allocator, CFPropertyList propertyList, long mutabilityOption){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFPropertyListRef CFPropertyListCreateFromStream(CFAllocatorRef allocator, CFReadStreamRef stream, CFIndex streamLength, CFOptionFlags mutabilityOption, CFPropertyListFormat *format, CFStringRef *errorString);
	 */
	public static CFPropertyList createFromStream(CFAllocator allocator, CFReadStream stream, long streamLength, long mutabilityOption, long[] format, String errorString){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFPropertyListRef CFPropertyListCreateWithData(CFAllocatorRef allocator, CFDataRef data, CFOptionFlags options, CFPropertyListFormat *format, CFErrorRef *error) ;
	 */
	public static CFPropertyList createWithData(CFAllocator allocator, CFData data, long options, long[] format, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFPropertyListRef CFPropertyListCreateWithStream(CFAllocatorRef allocator, CFReadStreamRef stream, CFIndex streamLength, CFOptionFlags options, CFPropertyListFormat *format, CFErrorRef *error) ;
	 */
	public static CFPropertyList createWithStream(CFAllocator allocator, CFReadStream stream, long streamLength, long options, long[] format, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef CFPropertyListCreateData(CFAllocatorRef allocator, CFPropertyListRef propertyList, CFPropertyListFormat format, CFOptionFlags options, CFErrorRef *error) ;
	 */
	public static CFData createData(CFAllocator allocator, CFPropertyList propertyList, long format, long options, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CFPropertyList() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean CFPropertyListIsValid(CFPropertyListRef plist, CFPropertyListFormat format);
	 */
	public byte isValid(long format){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFPropertyListWriteToStream(CFPropertyListRef propertyList, CFWriteStreamRef stream, CFPropertyListFormat format, CFStringRef *errorString);
	 */
	public long writeToStream(CFWriteStream stream, long format, String errorString){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFPropertyListWrite(CFPropertyListRef propertyList, CFWriteStreamRef stream, CFPropertyListFormat format, CFOptionFlags options, CFErrorRef *error) ;
	 */
	public long write(CFWriteStream stream, long format, long options, Reference<CFError> error){
		throw new RuntimeException("Stub");
	}
}
