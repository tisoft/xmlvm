package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSConditionLock extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithCondition:(NSInteger)condition;
	 */
	public NSConditionLock(int condition) {}

	/** Default constructor */
	public NSConditionLock() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)condition;
	 */
	public int condition(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)lockWhenCondition:(NSInteger)condition;
	 */
	public void lockWhenCondition(int condition){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)tryLock;
	 */
	public boolean tryLock(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)tryLockWhenCondition:(NSInteger)condition;
	 */
	public boolean tryLockWhenCondition(int condition){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)unlockWithCondition:(NSInteger)condition;
	 */
	public void unlockWithCondition(int condition){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)lockBeforeDate:(NSDate *)limit;
	 */
	public boolean lockBeforeDate(NSDate limit){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)lockWhenCondition:(NSInteger)condition beforeDate:(NSDate *)limit;
	 */
	public boolean lockWhenCondition(int condition, NSDate limit){
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
