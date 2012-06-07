package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSURLCredentialStorage extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSURLCredentialStorage *)sharedCredentialStorage;
	 */
	public static NSURLCredentialStorage sharedCredentialStorage(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSURLCredentialStorage() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSDictionary *)credentialsForProtectionSpace:(NSURLProtectionSpace *)space;
	 */
	public Map credentialsForProtectionSpace(NSURLProtectionSpace space){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)allCredentials;
	 */
	public Map allCredentials(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCredential:(NSURLCredential *)credential forProtectionSpace:(NSURLProtectionSpace *)space;
	 */
	public void setCredential(NSURLCredential credential, NSURLProtectionSpace space){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeCredential:(NSURLCredential *)credential forProtectionSpace:(NSURLProtectionSpace *)space;
	 */
	public void removeCredential(NSURLCredential credential, NSURLProtectionSpace space){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURLCredential *)defaultCredentialForProtectionSpace:(NSURLProtectionSpace *)space;
	 */
	public NSURLCredential defaultCredentialForProtectionSpace(NSURLProtectionSpace space){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDefaultCredential:(NSURLCredential *)credential forProtectionSpace:(NSURLProtectionSpace *)space;
	 */
	public void setDefaultCredential(NSURLCredential credential, NSURLProtectionSpace space){
		throw new RuntimeException("Stub");
	}
}
