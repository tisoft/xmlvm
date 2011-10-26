package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFError {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFErrorGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFErrorRef CFErrorCreateWithUserInfoKeysAndValues(CFAllocatorRef allocator, CFStringRef domain, CFIndex code, const void *const *userInfoKeys, const void *const *userInfoValues, CFIndex numUserInfoValues) ;
	 */
	public static CFError createWithUserInfoKeysAndValues(CFAllocator allocator, String domain, long code, byte[][] userInfoKeys, byte[][] userInfoValues, long numUserInfoValues){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CFErrorRef CFErrorCreate(CFAllocatorRef allocator, CFStringRef domain, CFIndex code, CFDictionaryRef userInfo) ;
	 */
	public CFError(CFAllocator allocator, String domain, long code, CFDictionary userInfo) {}

	/** Default constructor */
	CFError() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFStringRef CFErrorGetDomain(CFErrorRef err) ;
	 */
	public String getDomain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex CFErrorGetCode(CFErrorRef err) ;
	 */
	public long getCode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CFErrorCopyUserInfo(CFErrorRef err) ;
	 */
	public CFDictionary copyUserInfo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFErrorCopyDescription(CFErrorRef err) ;
	 */
	public String copyDescription(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFErrorCopyFailureReason(CFErrorRef err) ;
	 */
	public String copyFailureReason(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFErrorCopyRecoverySuggestion(CFErrorRef err) ;
	 */
	public String copyRecoverySuggestion(){
		throw new RuntimeException("Stub");
	}
}
