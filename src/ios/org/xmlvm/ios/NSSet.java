package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSSet extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)set;
	 */
	public static Set set(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)setWithObject:(id)object;
	 */
	public static Set setWithObject(Object object){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)setWithObjects:(id *)objects count:(NSUInteger)cnt;
	 */
	public static Set setWithObjects(Object[] objects, int cnt){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)setWithObjects:(id)firstObj, ... ;
	 */
	public static Set setWithObjects(Object... firstObj){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)setWithSet:(NSSet *)set;
	 */
	public static Set setWithSet(Set set){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)setWithArray:(NSArray *)array;
	 */
	public static Set setWithArray(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * void NSSetUncaughtExceptionHandler(NSUncaughtExceptionHandler *);
	 */
	public static void uncaughtExceptionHandler(Object[] nsuncaughtexceptionhandler){
		throw new RuntimeException("Stub");
	}

	/**
	 * void NSSetZoneName(NSZone *zone, NSString *name);
	 */
	public static void zoneName(NSZone zone, String name){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithObjects:(id *)objects count:(NSUInteger)cnt;
	 */
	public NSSet(Object[] objects, int cnt) {}

	/**
	 * - (id)initWithObjects:(id)firstObj, ... ;
	 */
	public NSSet(Object... firstObj) {}

	/**
	 * - (id)initWithSet:(NSSet *)set;
	 */
	public NSSet(Set set) {}

	/**
	 * - (id)initWithSet:(NSSet *)set copyItems:(BOOL)flag;
	 */
	public NSSet(Set set, boolean flag) {}

	/**
	 * - (id)initWithArray:(NSArray *)array;
	 */
	public NSSet(List array) {}

	/** Default constructor */
	NSSet() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (id)valueForKey:(NSString *)key ;
	 */
	public Object valueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setValue:(id)value forKey:(NSString *)key ;
	 */
	public void setValue(Object value, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context ;
	 */
	public void addObserver(NSObject observer, String keyPath, int options, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath ;
	 */
	public void removeObserver(NSObject observer, String keyPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)filteredSetUsingPredicate:(NSPredicate *)predicate ;
	 */
	public Set filteredSetUsingPredicate(NSPredicate predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)count;
	 */
	public int count(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)member:(id)object;
	 */
	public Object member(Object object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSEnumerator *)objectEnumerator;
	 */
	public NSEnumerator objectEnumerator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)allObjects;
	 */
	public List allObjects(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)anyObject;
	 */
	public Object anyObject(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)containsObject:(id)anObject;
	 */
	public boolean containsObject(Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)description;
	 */
	public String description(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)descriptionWithLocale:(id)locale;
	 */
	public String descriptionWithLocale(Object locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)intersectsSet:(NSSet *)otherSet;
	 */
	public boolean intersectsSet(Set otherSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isEqualToSet:(NSSet *)otherSet;
	 */
	public boolean isEqualToSet(Set otherSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isSubsetOfSet:(NSSet *)otherSet;
	 */
	public boolean isSubsetOfSet(Set otherSet){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)makeObjectsPerformSelector:(SEL)aSelector;
	 */
	public void makeObjectsPerformSelector(SEL aSelector){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)makeObjectsPerformSelector:(SEL)aSelector withObject:(id)argument;
	 */
	public void makeObjectsPerformSelector(SEL aSelector, Object argument){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)setByAddingObject:(id)anObject ;
	 */
	public Set setByAddingObject(Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)setByAddingObjectsFromSet:(NSSet *)other ;
	 */
	public Set setByAddingObjectsFromSet(Set other){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)setByAddingObjectsFromArray:(NSArray *)other ;
	 */
	public Set setByAddingObjectsFromArray(List other){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateObjectsUsingBlock:(void (^)(id obj, BOOL *stop))block ;
	 */
	public void enumerateObjectsUsingBlock(Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, BOOL *stop))block ;
	 */
	public void enumerateObjectsWithOptions(int opts, Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)objectsPassingTest:(BOOL (^)(id obj, BOOL *stop))predicate ;
	 */
	public Set objectsPassingTest(Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)objectsWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, BOOL *stop))predicate ;
	 */
	public Set objectsWithOptions(int opts, Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)sortedArrayUsingDescriptors:(NSArray *)sortDescriptors ;
	 */
	public List sortedArrayUsingDescriptors(List sortDescriptors){
		throw new RuntimeException("Stub");
	}
}
