package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSURLProtocol extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (BOOL)canInitWithRequest:(NSURLRequest *)request;
	 */
	public static boolean canInitWithRequest(NSURLRequest request){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSURLRequest *)canonicalRequestForRequest:(NSURLRequest *)request;
	 */
	public static NSURLRequest canonicalRequestForRequest(NSURLRequest request){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)requestIsCacheEquivalent:(NSURLRequest *)a toRequest:(NSURLRequest *)b;
	 */
	public static boolean requestIsCacheEquivalent(NSURLRequest a, NSURLRequest b){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)propertyForKey:(NSString *)key inRequest:(NSURLRequest *)request;
	 */
	public static Object propertyForKey(String key, NSURLRequest request){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setProperty:(id)value forKey:(NSString *)key inRequest:(NSMutableURLRequest *)request;
	 */
	public static void setProperty(Object value, String key, NSMutableURLRequest request){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)removePropertyForKey:(NSString *)key inRequest:(NSMutableURLRequest *)request;
	 */
	public static void removePropertyForKey(String key, NSMutableURLRequest request){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)registerClass:(Class)protocolClass;
	 */
	public static boolean registerClass(Class protocolClass){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)unregisterClass:(Class)protocolClass;
	 */
	public static void unregisterClass(Class protocolClass){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithRequest:(NSURLRequest *)request cachedResponse:(NSCachedURLResponse *)cachedResponse client:(id <NSURLProtocolClient>)client;
	 */
	public NSURLProtocol(NSURLRequest request, NSCachedURLResponse cachedResponse, org.xmlvm.ios.NSURLProtocolClient client) {}

	/** Default constructor */
	public NSURLProtocol() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (id <NSURLProtocolClient>)client;
	 */
	public org.xmlvm.ios.NSURLProtocolClient client(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURLRequest *)request;
	 */
	public NSURLRequest request(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSCachedURLResponse *)cachedResponse;
	 */
	public NSCachedURLResponse cachedResponse(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)startLoading;
	 */
	public void startLoading(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopLoading;
	 */
	public void stopLoading(){
		throw new RuntimeException("Stub");
	}
}
