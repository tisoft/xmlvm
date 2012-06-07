package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSURLCredential extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSURLCredential *)credentialWithUser:(NSString *)user password:(NSString *)password persistence:(NSURLCredentialPersistence)persistence;
	 */
	public static NSURLCredential credentialWithUser(String user, String password, int persistence){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSURLCredential *)credentialWithIdentity:(SecIdentityRef)identity certificates:(NSArray *)certArray persistence:(NSURLCredentialPersistence)persistence ;
	 */
	public static NSURLCredential credentialWithIdentity(SecIdentity identity, List certArray, int persistence){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSURLCredential *)credentialForTrust:(SecTrustRef)trust ;
	 */
	public static NSURLCredential credentialForTrust(SecTrust trust){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithUser:(NSString *)user password:(NSString *)password persistence:(NSURLCredentialPersistence)persistence;
	 */
	public NSURLCredential(String user, String password, int persistence) {}

	/**
	 * - (id)initWithIdentity:(SecIdentityRef)identity certificates:(NSArray *)certArray persistence:(NSURLCredentialPersistence) persistence ;
	 */
	public NSURLCredential(SecIdentity identity, List certArray, int persistence) {}

	/**
	 * - (id)initWithTrust:(SecTrustRef)trust ;
	 */
	public NSURLCredential(SecTrust trust) {}

	/** Default constructor */
	public NSURLCredential() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSURLCredentialPersistence)persistence;
	 */
	public int persistence(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)user;
	 */
	public String user(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)password;
	 */
	public String password(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)hasPassword;
	 */
	public boolean hasPassword(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (SecIdentityRef)identity;
	 */
	public SecIdentity identity(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)certificates ;
	 */
	public List certificates(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
