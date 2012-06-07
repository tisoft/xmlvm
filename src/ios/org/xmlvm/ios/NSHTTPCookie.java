package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSHTTPCookie extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)cookieWithProperties:(NSDictionary *)properties;
	 */
	public static Object cookieWithProperties(Map properties){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDictionary *)requestHeaderFieldsWithCookies:(NSArray *)cookies;
	 */
	public static Map requestHeaderFieldsWithCookies(List cookies){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)cookiesWithResponseHeaderFields:(NSDictionary *)headerFields forURL:(NSURL *)URL;
	 */
	public static List cookiesWithResponseHeaderFields(Map headerFields, NSURL URL){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithProperties:(NSDictionary *)properties;
	 */
	public NSHTTPCookie(Map properties) {}

	/** Default constructor */
	public NSHTTPCookie() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSDictionary *)properties;
	 */
	public Map properties(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)version;
	 */
	public int versionCookie(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)name;
	 */
	public String name(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)value;
	 */
	public String value(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)expiresDate;
	 */
	public NSDate expiresDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isSessionOnly;
	 */
	public boolean isSessionOnly(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)domain;
	 */
	public String domain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)path;
	 */
	public String path(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isSecure;
	 */
	public boolean isSecure(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isHTTPOnly;
	 */
	public boolean isHTTPOnly(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)comment;
	 */
	public String comment(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)commentURL;
	 */
	public NSURL commentURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)portList;
	 */
	public List portList(){
		throw new RuntimeException("Stub");
	}
}
