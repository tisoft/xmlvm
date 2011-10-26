package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSMutableSet extends NSSet {

	/*
	 * Static methods
	 */

	/**
	 * + (id)setWithCapacity:(NSUInteger)numItems;
	 */
	public static Set setWithCapacity(int numItems){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithCapacity:(NSUInteger)numItems;
	 */
	public NSMutableSet(int numItems) {}

	/** Default constructor */
	NSMutableSet() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)filterUsingPredicate:(NSPredicate *)predicate ;
	 */
	public void filterUsingPredicate(NSPredicate predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addObject:(id)object;
	 */
	public void addObject(Object object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObject:(id)object;
	 */
	public void removeObject(Object object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addObjectsFromArray:(NSArray *)array;
	 */
	public void addObjectsFromArray(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)intersectSet:(NSSet *)otherSet;
	 */
	public void intersectSet(Set otherSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)minusSet:(NSSet *)otherSet;
	 */
	public void minusSet(Set otherSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeAllObjects;
	 */
	public void removeAllObjects(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)unionSet:(NSSet *)otherSet;
	 */
	public void unionSet(Set otherSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setSet:(NSSet *)otherSet;
	 */
	public void setSet(Set otherSet){
		throw new RuntimeException("Stub");
	}
}
