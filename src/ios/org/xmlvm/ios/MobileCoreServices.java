package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MobileCoreServices {

	/*
	 * Static methods
	 */

	/**
	 * CFDictionaryRef UTTypeCopyDeclaration(CFStringRef inUTI) ;
	 */
	public static CFDictionary UTTypeCopyDeclaration(String inUTI){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef UTCreateStringForOSType(OSType inOSType) ;
	 */
	public static String UTCreateStringForOSType(int inOSType){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef UTTypeCreateAllIdentifiersForTag( CFStringRef inTagClass, CFStringRef inTag, CFStringRef inConformingToUTI) ;
	 */
	public static CFArray UTTypeCreateAllIdentifiersForTag(String inTagClass, String inTag, String inConformingToUTI){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean UTTypeEqual( CFStringRef inUTI1, CFStringRef inUTI2) ;
	 */
	public static byte UTTypeEqual(String inUTI1, String inUTI2){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef UTTypeCreatePreferredIdentifierForTag( CFStringRef inTagClass, CFStringRef inTag, CFStringRef inConformingToUTI) ;
	 */
	public static String UTTypeCreatePreferredIdentifierForTag(String inTagClass, String inTag, String inConformingToUTI){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef UTTypeCopyPreferredTagWithClass( CFStringRef inUTI, CFStringRef inTagClass) ;
	 */
	public static String UTTypeCopyPreferredTagWithClass(String inUTI, String inTagClass){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef UTTypeCopyDescription(CFStringRef inUTI) ;
	 */
	public static String UTTypeCopyDescription(String inUTI){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSType UTGetOSTypeFromString(CFStringRef inString) ;
	 */
	public static int UTGetOSTypeFromString(String inString){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean UTTypeConformsTo( CFStringRef inUTI, CFStringRef inConformsToUTI) ;
	 */
	public static byte UTTypeConformsTo(String inUTI, String inConformsToUTI){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFURLRef UTTypeCopyDeclaringBundleURL(CFStringRef inUTI) ;
	 */
	public static CFURL UTTypeCopyDeclaringBundleURL(String inUTI){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MobileCoreServices() {}
}
