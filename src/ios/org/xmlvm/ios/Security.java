package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class Security {

	/*
	 * Static methods
	 */

	/**
	 * OSStatus SecPKCS12Import(CFDataRef pkcs12_data, CFDictionaryRef options, CFArrayRef *items) ;
	 */
	public static int SecPKCS12Import(CFData pkcs12_data, CFDictionary options, Reference<CFArray> items){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus SecItemUpdate(CFDictionaryRef query, CFDictionaryRef attributesToUpdate) ;
	 */
	public static int SecItemUpdate(CFDictionary query, CFDictionary attributesToUpdate){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus SecItemDelete(CFDictionaryRef query) ;
	 */
	public static int SecItemDelete(CFDictionary query){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus SecItemAdd(CFDictionaryRef attributes, CFTypeRef *result) ;
	 */
	public static int SecItemAdd(CFDictionary attributes, byte[][] result){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus SecItemCopyMatching(CFDictionaryRef query, CFTypeRef *result) ;
	 */
	public static int SecItemCopyMatching(CFDictionary query, byte[][] result){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public Security() {}
}
