package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSURLCache extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSURLCache *)sharedURLCache;
	 */
	public static NSURLCache sharedURLCache(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)setSharedURLCache:(NSURLCache *)cache;
	 */
	public static void setSharedURLCache(NSURLCache cache){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithMemoryCapacity:(NSUInteger)memoryCapacity diskCapacity:(NSUInteger)diskCapacity diskPath:(NSString *)path;
	 */
	public NSURLCache(int memoryCapacity, int diskCapacity, String path) {}

	/** Default constructor */
	public NSURLCache() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSCachedURLResponse *)cachedResponseForRequest:(NSURLRequest *)request;
	 */
	public NSCachedURLResponse cachedResponseForRequest(NSURLRequest request){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)storeCachedResponse:(NSCachedURLResponse *)cachedResponse forRequest:(NSURLRequest *)request;
	 */
	public void storeCachedResponse(NSCachedURLResponse cachedResponse, NSURLRequest request){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeCachedResponseForRequest:(NSURLRequest *)request;
	 */
	public void removeCachedResponseForRequest(NSURLRequest request){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeAllCachedResponses;
	 */
	public void removeAllCachedResponses(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)memoryCapacity;
	 */
	public int memoryCapacity(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)diskCapacity;
	 */
	public int diskCapacity(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMemoryCapacity:(NSUInteger)memoryCapacity;
	 */
	public void setMemoryCapacity(int memoryCapacity){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDiskCapacity:(NSUInteger)diskCapacity;
	 */
	public void setDiskCapacity(int diskCapacity){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)currentMemoryUsage;
	 */
	public int currentMemoryUsage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)currentDiskUsage;
	 */
	public int currentDiskUsage(){
		throw new RuntimeException("Stub");
	}
}
