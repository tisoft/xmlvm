package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSURLRequest extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)requestWithURL:(NSURL *)URL;
	 */
	public static Object requestWithURL(NSURL URL){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)requestWithURL:(NSURL *)URL cachePolicy:(NSURLRequestCachePolicy)cachePolicy timeoutInterval:(NSTimeInterval)timeoutInterval;
	 */
	public static Object requestWithURL(NSURL URL, int cachePolicy, double timeoutInterval){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithURL:(NSURL *)URL;
	 */
	public NSURLRequest(NSURL URL) {}

	/**
	 * - (id)initWithURL:(NSURL *)URL cachePolicy:(NSURLRequestCachePolicy)cachePolicy timeoutInterval:(NSTimeInterval)timeoutInterval;
	 */
	public NSURLRequest(NSURL URL, int cachePolicy, double timeoutInterval) {}

	/** Default constructor */
	NSURLRequest() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSURL *)URL;
	 */
	public NSURL URL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURLRequestCachePolicy)cachePolicy;
	 */
	public int cachePolicy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSTimeInterval)timeoutInterval;
	 */
	public double timeoutInterval(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)mainDocumentURL;
	 */
	public NSURL mainDocumentURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURLRequestNetworkServiceType)networkServiceType ;
	 */
	public int networkServiceType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)HTTPMethod;
	 */
	public String HTTPMethod(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)allHTTPHeaderFields;
	 */
	public Map allHTTPHeaderFields(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)valueForHTTPHeaderField:(NSString *)field;
	 */
	public String valueForHTTPHeaderField(String field){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)HTTPBody;
	 */
	public NSData HTTPBody(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInputStream *)HTTPBodyStream;
	 */
	public NSInputStream HTTPBodyStream(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)HTTPShouldHandleCookies;
	 */
	public boolean HTTPShouldHandleCookies(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)HTTPShouldUsePipelining ;
	 */
	public boolean HTTPShouldUsePipelining(){
		throw new RuntimeException("Stub");
	}
}
