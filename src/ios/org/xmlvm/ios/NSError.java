package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSError extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)errorWithDomain:(NSString *)domain code:(NSInteger)code userInfo:(NSDictionary *)dict;
	 */
	public static NSError errorWithDomain(String domain, int code, Map dict){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithDomain:(NSString *)domain code:(NSInteger)code userInfo:(NSDictionary *)dict;
	 */
	public NSError(String domain, int code, Map dict) {}

	/** Default constructor */
	public NSError() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)domain;
	 */
	public String domain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)code;
	 */
	public int code(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)userInfo;
	 */
	public Map userInfo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)localizedDescription;
	 */
	public String localizedDescription(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)localizedFailureReason;
	 */
	public String localizedFailureReason(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)localizedRecoverySuggestion;
	 */
	public String localizedRecoverySuggestion(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)localizedRecoveryOptions;
	 */
	public List localizedRecoveryOptions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)recoveryAttempter;
	 */
	public Object recoveryAttempter(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)helpAnchor;
	 */
	public String helpAnchor(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
