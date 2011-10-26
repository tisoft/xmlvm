package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSCountedSet extends NSMutableSet {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithCapacity:(NSUInteger)numItems;
	 */
	public NSCountedSet(int numItems) {}

	/**
	 * - (id)initWithArray:(NSArray *)array;
	 */
	public NSCountedSet(List array) {}

	/**
	 * - (id)initWithSet:(NSSet *)set;
	 */
	public NSCountedSet(Set set) {}

	/** Default constructor */
	NSCountedSet() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSUInteger)countForObject:(id)object;
	 */
	public int countForObject(Object object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSEnumerator *)objectEnumerator;
	 */
	public NSEnumerator objectEnumerator(){
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
}
