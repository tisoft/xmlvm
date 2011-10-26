package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SecIdentity {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID SecIdentityGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	SecIdentity() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus SecIdentityCopyCertificate( SecIdentityRef identityRef, SecCertificateRef *certificateRef) ;
	 */
	public int copyCertificate(Reference<SecCertificate> certificateRef){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus SecIdentityCopyPrivateKey( SecIdentityRef identityRef, SecKeyRef *privateKeyRef) ;
	 */
	public int copyPrivateKey(Reference<SecKey> privateKeyRef){
		throw new RuntimeException("Stub");
	}
}
