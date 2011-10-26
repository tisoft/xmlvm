package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SecCertificate {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID SecCertificateGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SecCertificateRef SecCertificateCreateWithData(CFAllocatorRef allocator, CFDataRef data) ;
	 */
	public static SecCertificate createWithData(CFAllocator allocator, CFData data){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	SecCertificate() {}

	/*
	 * Instance methods
	 */

	/**
	 * CFDataRef SecCertificateCopyData(SecCertificateRef certificate) ;
	 */
	public CFData copyData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef SecCertificateCopySubjectSummary(SecCertificateRef certificate) ;
	 */
	public String copySubjectSummary(){
		throw new RuntimeException("Stub");
	}
}
