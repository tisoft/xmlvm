package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSCachedURLResponse extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithResponse:(NSURLResponse *)response data:(NSData *)data;
	 */
	public NSCachedURLResponse(NSURLResponse response, NSData data) {}

	/**
	 * - (id)initWithResponse:(NSURLResponse *)response data:(NSData *)data userInfo:(NSDictionary *)userInfo storagePolicy:(NSURLCacheStoragePolicy)storagePolicy;
	 */
	public NSCachedURLResponse(NSURLResponse response, NSData data, Map userInfo, int storagePolicy) {}

	/** Default constructor */
	public NSCachedURLResponse() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSURLResponse *)response;
	 */
	public NSURLResponse response(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)data;
	 */
	public NSData data(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)userInfo;
	 */
	public Map userInfo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURLCacheStoragePolicy)storagePolicy;
	 */
	public int storagePolicy(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
