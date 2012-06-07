package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFHTTPAuthentication {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFHTTPAuthenticationGetTypeID(void) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFHTTPAuthenticationRef CFHTTPAuthenticationCreateFromResponse( CFAllocatorRef alloc, CFHTTPMessageRef response) ;
	 */
	public static CFHTTPAuthentication createFromResponse(CFAllocator alloc, CFHTTPMessage response){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CFHTTPAuthentication() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean CFHTTPAuthenticationIsValid( CFHTTPAuthenticationRef auth, CFStreamError * error) ;
	 */
	public byte isValid(Reference<CFStreamError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFHTTPAuthenticationAppliesToRequest( CFHTTPAuthenticationRef auth, CFHTTPMessageRef request) ;
	 */
	public byte appliesToRequest(CFHTTPMessage request){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFHTTPAuthenticationRequiresOrderedRequests(CFHTTPAuthenticationRef auth) ;
	 */
	public byte requiresOrderedRequests(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFHTTPAuthenticationCopyRealm(CFHTTPAuthenticationRef auth) ;
	 */
	public String copyRealm(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFArrayRef CFHTTPAuthenticationCopyDomains(CFHTTPAuthenticationRef auth) ;
	 */
	public CFArray copyDomains(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFHTTPAuthenticationCopyMethod(CFHTTPAuthenticationRef auth) ;
	 */
	public String copyMethod(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFHTTPAuthenticationRequiresUserNameAndPassword(CFHTTPAuthenticationRef auth) ;
	 */
	public byte requiresUserNameAndPassword(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean CFHTTPAuthenticationRequiresAccountDomain(CFHTTPAuthenticationRef auth) ;
	 */
	public byte requiresAccountDomain(){
		throw new RuntimeException("Stub");
	}
}
