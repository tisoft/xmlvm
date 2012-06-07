package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSIndexSet extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)indexSet;
	 */
	public static NSIndexSet indexSet(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)indexSetWithIndex:(NSUInteger)value;
	 */
	public static NSIndexSet indexSetWithIndex(int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)indexSetWithIndexesInRange:(NSRange)range;
	 */
	public static NSIndexSet indexSetWithIndexesInRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)init;
	 */
	public NSIndexSet() {}

	/**
	 * - (id)initWithIndex:(NSUInteger)value;
	 */
	public NSIndexSet(int value) {}

	/**
	 * - (id)initWithIndexesInRange:(NSRange)range;
	 */
	public NSIndexSet(NSRange range) {}

	/**
	 * - (id)initWithIndexSet:(NSIndexSet *)indexSet;
	 */
	public NSIndexSet(NSIndexSet indexSet) {}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)isEqualToIndexSet:(NSIndexSet *)indexSet;
	 */
	public boolean isEqualToIndexSet(NSIndexSet indexSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)count;
	 */
	public int count(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)firstIndex;
	 */
	public int firstIndex(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)lastIndex;
	 */
	public int lastIndex(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexGreaterThanIndex:(NSUInteger)value;
	 */
	public int indexGreaterThanIndex(int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexLessThanIndex:(NSUInteger)value;
	 */
	public int indexLessThanIndex(int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexGreaterThanOrEqualToIndex:(NSUInteger)value;
	 */
	public int indexGreaterThanOrEqualToIndex(int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexLessThanOrEqualToIndex:(NSUInteger)value;
	 */
	public int indexLessThanOrEqualToIndex(int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)getIndexes:(NSUInteger *)indexBuffer maxCount:(NSUInteger)bufferSize inIndexRange:(NSRangePointer)range;
	 */
	public int getIndexes(int[] indexBuffer, int bufferSize, Reference<NSRange> range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)countOfIndexesInRange:(NSRange)range;
	 */
	public int countOfIndexesInRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)containsIndex:(NSUInteger)value;
	 */
	public boolean containsIndex(int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)containsIndexesInRange:(NSRange)range;
	 */
	public boolean containsIndexesInRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)containsIndexes:(NSIndexSet *)indexSet;
	 */
	public boolean containsIndexes(NSIndexSet indexSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)intersectsIndexesInRange:(NSRange)range;
	 */
	public boolean intersectsIndexesInRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateIndexesUsingBlock:(void (^)(NSUInteger idx, BOOL *stop))block ;
	 */
	public void enumerateIndexesUsingBlock(Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateIndexesWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(NSUInteger idx, BOOL *stop))block ;
	 */
	public void enumerateIndexesWithOptions(int opts, Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateIndexesInRange:(NSRange)range options:(NSEnumerationOptions)opts usingBlock:(void (^)(NSUInteger idx, BOOL *stop))block ;
	 */
	public void enumerateIndexesInRange(NSRange range, int opts, Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexPassingTest:(BOOL (^)(NSUInteger idx, BOOL *stop))predicate ;
	 */
	public int indexPassingTest(Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(NSUInteger idx, BOOL *stop))predicate ;
	 */
	public int indexWithOptions(int opts, Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexInRange:(NSRange)range options:(NSEnumerationOptions)opts passingTest:(BOOL (^)(NSUInteger idx, BOOL *stop))predicate ;
	 */
	public int indexInRange(NSRange range, int opts, Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSIndexSet *)indexesPassingTest:(BOOL (^)(NSUInteger idx, BOOL *stop))predicate ;
	 */
	public NSIndexSet indexesPassingTest(Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSIndexSet *)indexesWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(NSUInteger idx, BOOL *stop))predicate ;
	 */
	public NSIndexSet indexesWithOptions(int opts, Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSIndexSet *)indexesInRange:(NSRange)range options:(NSEnumerationOptions)opts passingTest:(BOOL (^)(NSUInteger idx, BOOL *stop))predicate ;
	 */
	public NSIndexSet indexesInRange(NSRange range, int opts, Object predicate){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
