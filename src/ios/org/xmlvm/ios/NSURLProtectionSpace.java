package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSURLProtectionSpace extends NSObject {

	/*
	 * Initialization enumerations
	 */

	public static enum ServerType {
		Default, Proxy;
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithHost:(NSString *)host port:(NSInteger)port protocol:(NSString *)protocol realm:(NSString *)realm authenticationMethod:(NSString *)authenticationMethod;
	 * - (id)initWithProxyHost:(NSString *)host port:(NSInteger)port type:(NSString *)type realm:(NSString *)realm authenticationMethod:(NSString *)authenticationMethod;
	 */
	public NSURLProtectionSpace(String host, int port, String protocol, String realm, String authenticationMethod, NSURLProtectionSpace.ServerType servertype) {}

	/** Default constructor */
	public NSURLProtectionSpace() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)realm;
	 */
	public String realm(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)receivesCredentialSecurely;
	 */
	public boolean receivesCredentialSecurely(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isProxy;
	 */
	public boolean isProxy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)host;
	 */
	public String host(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)port;
	 */
	public int port(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)proxyType;
	 */
	public String proxyType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)protocol;
	 */
	public String protocol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)authenticationMethod;
	 */
	public String authenticationMethod(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)distinguishedNames ;
	 */
	public List distinguishedNames(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (SecTrustRef)serverTrust ;
	 */
	public SecTrust serverTrust(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
