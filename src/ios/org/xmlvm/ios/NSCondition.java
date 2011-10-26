package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSCondition extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSCondition() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)wait;
	 */
	public void waitCondition(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)waitUntilDate:(NSDate *)limit;
	 */
	public boolean waitUntilDate(NSDate limit){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)signal;
	 */
	public void signal(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)broadcast;
	 */
	public void broadcast(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setName:(NSString *)n ;
	 */
	public void setName(String n){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)name ;
	 */
	public String name(){
		throw new RuntimeException("Stub");
	}
}
