package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SecPolicy {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID SecPolicyGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SecPolicyRef SecPolicyCreateBasicX509(void) ;
	 */
	public static SecPolicy createBasicX509(){
		throw new RuntimeException("Stub");
	}

	/**
	 * SecPolicyRef SecPolicyCreateSSL(Boolean server, CFStringRef hostname) ;
	 */
	public static SecPolicy createSSL(byte server, String hostname){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	SecPolicy() {}
}
