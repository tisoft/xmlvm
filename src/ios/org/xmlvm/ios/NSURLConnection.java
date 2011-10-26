package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSURLConnection extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (BOOL)canHandleRequest:(NSURLRequest *)request;
	 */
	public static boolean canHandleRequest(NSURLRequest request){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSURLConnection *)connectionWithRequest:(NSURLRequest *)request delegate:(id)delegate;
	 */
	public static NSURLConnection connectionWithRequest(NSURLRequest request, Object delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSData *)sendSynchronousRequest:(NSURLRequest *)request returningResponse:(NSURLResponse **)response error:(NSError **)error;
	 */
	public static NSData sendSynchronousRequest(NSURLRequest request, Reference<NSURLResponse> response, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithRequest:(NSURLRequest *)request delegate:(id)delegate;
	 */
	public NSURLConnection(NSURLRequest request, Object delegate) {}

	/**
	 * - (id)initWithRequest:(NSURLRequest *)request delegate:(id)delegate startImmediately:(BOOL)startImmediately ;
	 */
	public NSURLConnection(NSURLRequest request, Object delegate, boolean startImmediately) {}

	/** Default constructor */
	NSURLConnection() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)start ;
	 */
	public void start(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancel;
	 */
	public void cancel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)scheduleInRunLoop:(NSRunLoop *)aRunLoop forMode:(NSString *)mode ;
	 */
	public void scheduleInRunLoop(NSRunLoop aRunLoop, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)unscheduleFromRunLoop:(NSRunLoop *)aRunLoop forMode:(NSString *)mode ;
	 */
	public void unscheduleFromRunLoop(NSRunLoop aRunLoop, String mode){
		throw new RuntimeException("Stub");
	}
}
