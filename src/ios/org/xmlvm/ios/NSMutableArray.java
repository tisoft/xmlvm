package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSMutableArray extends NSArray {

	/*
	 * Static methods
	 */

	/**
	 * + (id)arrayWithCapacity:(NSUInteger)numItems;
	 */
	public static List arrayWithCapacity(int numItems){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */
	public NSMutableArray(Object[] objects, int cnt) {
		super(objects, cnt);
	}
	public NSMutableArray(Object... firstObj) {
		super(firstObj);
	}
	public NSMutableArray(List array) {
		super(array);
	}
	public NSMutableArray(List array, boolean flag) {
		super(array, flag);
	}
	public NSMutableArray(String path) {
		super(path);
	}
	public NSMutableArray(NSURL url) {
		super(url);
	}

	/**
	 * - (id)initWithCapacity:(NSUInteger)numItems;
	 */
	public NSMutableArray(int numItems) {}

	/** Default constructor */
	public NSMutableArray() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)addObject:(id)anObject;
	 */
	public void addObject(Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertObject:(id)anObject atIndex:(NSUInteger)index;
	 */
	public void insertObject(Object anObject, int index){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeLastObject;
	 */
	public void removeLastObject(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObjectAtIndex:(NSUInteger)index;
	 */
	public void removeObjectAtIndex(int index){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;
	 */
	public void replaceObjectAtIndex(int index, Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addObjectsFromArray:(NSArray *)otherArray;
	 */
	public void addObjectsFromArray(List otherArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2;
	 */
	public void exchangeObjectAtIndex(int idx1, int idx2){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeAllObjects;
	 */
	public void removeAllObjects(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObject:(id)anObject inRange:(NSRange)range;
	 */
	public void removeObject(Object anObject, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObject:(id)anObject;
	 */
	public void removeObject(Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObjectIdenticalTo:(id)anObject inRange:(NSRange)range;
	 */
	public void removeObjectIdenticalTo(Object anObject, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObjectIdenticalTo:(id)anObject;
	 */
	public void removeObjectIdenticalTo(Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObjectsFromIndices:(NSUInteger *)indices numIndices:(NSUInteger)cnt ;
	 */
	public void removeObjectsFromIndices(int[] indices, int cnt){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObjectsInArray:(NSArray *)otherArray;
	 */
	public void removeObjectsInArray(List otherArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObjectsInRange:(NSRange)range;
	 */
	public void removeObjectsInRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray range:(NSRange)otherRange;
	 */
	public void replaceObjectsInRange(NSRange range, List otherArray, NSRange otherRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray;
	 */
	public void replaceObjectsInRange(NSRange range, List otherArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setArray:(NSArray *)otherArray;
	 */
	public void setArray(List otherArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)sortUsingFunction:(NSInteger (*)(id, id, void *))compare context:(void *)context;
	 */
	public void sortUsingFunction(Object compare, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)sortUsingSelector:(SEL)comparator;
	 */
	public void sortUsingSelector(SEL comparator){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes ;
	 */
	public void insertObjects(List objects, NSIndexSet indexes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObjectsAtIndexes:(NSIndexSet *)indexes ;
	 */
	public void removeObjectsAtIndexes(NSIndexSet indexes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects ;
	 */
	public void replaceObjectsAtIndexes(NSIndexSet indexes, List objects){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)sortUsingComparator:(NSComparator)cmptr ;
	 */
	public void sortUsingComparator(Object cmptr){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)sortWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr ;
	 */
	public void sortWithOptions(int opts, Object cmptr){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)filterUsingPredicate:(NSPredicate *)predicate;
	 */
	public void filterUsingPredicate(NSPredicate predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)sortUsingDescriptors:(NSArray *)sortDescriptors;
	 */
	public void sortUsingDescriptors(List sortDescriptors){
		throw new RuntimeException("Stub");
	}
}
