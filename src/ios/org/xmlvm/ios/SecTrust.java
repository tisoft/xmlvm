package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SecTrust {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID SecTrustGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus SecTrustCreateWithCertificates(CFTypeRef certificates, CFTypeRef policies, SecTrustRef *trustRef) ;
	 */
	public static int createWithCertificates(byte[] certificates, byte[] policies, Reference<SecTrust> trustRef){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public SecTrust() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus SecTrustSetAnchorCertificates(SecTrustRef trust, CFArrayRef anchorCertificates) ;
	 */
	public int setAnchorCertificates(CFArray anchorCertificates){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus SecTrustSetAnchorCertificatesOnly(SecTrustRef trust, Boolean anchorCertificatesOnly) ;
	 */
	public int setAnchorCertificatesOnly(byte anchorCertificatesOnly){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus SecTrustSetVerifyDate(SecTrustRef trust, CFDateRef verifyDate) ;
	 */
	public int setVerifyDate(NSDate verifyDate){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFAbsoluteTime SecTrustGetVerifyTime(SecTrustRef trust) ;
	 */
	public double getVerifyTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus SecTrustEvaluate(SecTrustRef trust, SecTrustResultType *result) ;
	 */
	public int evaluate(int[] result){
		throw new RuntimeException("Stub");
	}

	/**
	 * SecKeyRef SecTrustCopyPublicKey(SecTrustRef trust) ;
	 */
	public SecKey copyPublicKey(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFIndex SecTrustGetCertificateCount(SecTrustRef trust) ;
	 */
	public long getCertificateCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SecCertificateRef SecTrustGetCertificateAtIndex(SecTrustRef trust, CFIndex ix) ;
	 */
	public SecCertificate getCertificateAtIndex(long ix){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDataRef SecTrustCopyExceptions(SecTrustRef trust) ;
	 */
	public CFData copyExceptions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool SecTrustSetExceptions(SecTrustRef trust, CFDataRef exceptions) ;
	 */
	public boolean setExceptions(CFData exceptions){
		throw new RuntimeException("Stub");
	}
}
