package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSLock extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSLock() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)tryLock;
	 */
	public boolean tryLock(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)lockBeforeDate:(NSDate *)limit;
	 */
	public boolean lockBeforeDate(NSDate limit){
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

	/*
	 * Interface Properties
	 */
}
