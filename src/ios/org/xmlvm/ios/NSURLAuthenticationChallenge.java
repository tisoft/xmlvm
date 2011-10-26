package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSURLAuthenticationChallenge extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithProtectionSpace:(NSURLProtectionSpace *)space proposedCredential:(NSURLCredential *)credential previousFailureCount:(NSInteger)previousFailureCount failureResponse:(NSURLResponse *)response error:(NSError *)error sender:(id<NSURLAuthenticationChallengeSender>)sender;
	 */
	public NSURLAuthenticationChallenge(NSURLProtectionSpace space, NSURLCredential credential, int previousFailureCount, NSURLResponse response, NSError error, NSURLAuthenticationChallengeSender sender) {}

	/**
	 * - (id)initWithAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge sender:(id<NSURLAuthenticationChallengeSender>)sender;
	 */
	public NSURLAuthenticationChallenge(NSURLAuthenticationChallenge challenge, NSURLAuthenticationChallengeSender sender) {}

	/** Default constructor */
	NSURLAuthenticationChallenge() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSURLProtectionSpace *)protectionSpace;
	 */
	public NSURLProtectionSpace protectionSpace(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURLCredential *)proposedCredential;
	 */
	public NSURLCredential proposedCredential(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)previousFailureCount;
	 */
	public int previousFailureCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURLResponse *)failureResponse;
	 */
	public NSURLResponse failureResponse(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSError *)error;
	 */
	public NSError error(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id<NSURLAuthenticationChallengeSender>)sender;
	 */
	public NSURLAuthenticationChallengeSender sender(){
		throw new RuntimeException("Stub");
	}
}
