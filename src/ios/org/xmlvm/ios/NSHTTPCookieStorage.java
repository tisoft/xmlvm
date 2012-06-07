package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSHTTPCookieStorage extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSHTTPCookieStorage *)sharedHTTPCookieStorage;
	 */
	public static NSHTTPCookieStorage sharedHTTPCookieStorage(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithStorageLocation:(NSURL*)storageFileURL;
	 */
	public NSHTTPCookieStorage(NSURL storageFileURL) {}

	/** Default constructor */
	public NSHTTPCookieStorage() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSArray *)cookies;
	 */
	public List cookies(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCookie:(NSHTTPCookie *)cookie;
	 */
	public void setCookie(NSHTTPCookie cookie){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)deleteCookie:(NSHTTPCookie *)cookie;
	 */
	public void deleteCookie(NSHTTPCookie cookie){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)cookiesForURL:(NSURL *)URL;
	 */
	public List cookiesForURL(NSURL URL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCookies:(NSArray *)cookies forURL:(NSURL *)URL mainDocumentURL:(NSURL *)mainDocumentURL;
	 */
	public void setCookies(List cookies, NSURL URL, NSURL mainDocumentURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSHTTPCookieAcceptPolicy)cookieAcceptPolicy;
	 */
	public int cookieAcceptPolicy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setCookieAcceptPolicy:(NSHTTPCookieAcceptPolicy)cookieAcceptPolicy;
	 */
	public void setCookieAcceptPolicy(int cookieAcceptPolicy){
		throw new RuntimeException("Stub");
	}
}
