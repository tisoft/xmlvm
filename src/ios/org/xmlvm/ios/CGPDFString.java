package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CGPDFString {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CGPDFString() {}

	/*
	 * Instance methods
	 */

	/**
	 * size_t CGPDFStringGetLength(CGPDFStringRef string) ;
	 */
	public int getLength(){
		throw new RuntimeException("Stub");
	}

	/**
	 * const unsigned char *CGPDFStringGetBytePtr(CGPDFStringRef string) ;
	 */
	public byte[] getBytePtr(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CGPDFStringCopyTextString(CGPDFStringRef string) ;
	 */
	public String copyTextString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDateRef CGPDFStringCopyDate(CGPDFStringRef string) ;
	 */
	public NSDate copyDate(){
		throw new RuntimeException("Stub");
	}
}
