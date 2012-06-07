package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSArray extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)array;
	 */
	public static List array(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)arrayWithObject:(id)anObject;
	 */
	public static List arrayWithObject(Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)arrayWithObjects:(const id *)objects count:(NSUInteger)cnt;
	 */
	public static List arrayWithObjects(Object[] objects, int cnt){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)arrayWithObjects:(id)firstObj, ... ;
	 */
	public static List arrayWithObjects(Object... firstObj){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)arrayWithArray:(NSArray *)array;
	 */
	public static List arrayWithArray(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)arrayWithContentsOfFile:(NSString *)path;
	 */
	public static List arrayWithContentsOfFile(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)arrayWithContentsOfURL:(NSURL *)url;
	 */
	public static List arrayWithContentsOfURL(NSURL url){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithObjects:(const id *)objects count:(NSUInteger)cnt;
	 */
	public NSArray(Object[] objects, int cnt) {}

	/**
	 * - (id)initWithObjects:(id)firstObj, ... ;
	 */
	public NSArray(Object... firstObj) {}

	/**
	 * - (id)initWithArray:(NSArray *)array;
	 */
	public NSArray(List array) {}

	/**
	 * - (id)initWithArray:(NSArray *)array copyItems:(BOOL)flag ;
	 */
	public NSArray(List array, boolean flag) {}

	/**
	 * - (id)initWithContentsOfFile:(NSString *)path;
	 */
	public NSArray(String path) {}

	/**
	 * - (id)initWithContentsOfURL:(NSURL *)url;
	 */
	public NSArray(NSURL url) {}

	/** Default constructor */
	public NSArray() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSUInteger)count;
	 */
	public int count(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)objectAtIndex:(NSUInteger)index;
	 */
	public Object objectAtIndex(int index){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)arrayByAddingObject:(id)anObject;
	 */
	public List arrayByAddingObject(Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)arrayByAddingObjectsFromArray:(NSArray *)otherArray;
	 */
	public List arrayByAddingObjectsFromArray(List otherArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)componentsJoinedByString:(NSString *)separator;
	 */
	public String componentsJoinedByString(String separator){
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
	 * - (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level;
	 */
	public String descriptionWithLocale(Object locale, int level){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)firstObjectCommonWithArray:(NSArray *)otherArray;
	 */
	public Object firstObjectCommonWithArray(List otherArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getObjects:(id *)objects range:(NSRange)range;
	 */
	public void getObjects(Object[] objects, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexOfObject:(id)anObject;
	 */
	public int indexOfObject(Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexOfObject:(id)anObject inRange:(NSRange)range;
	 */
	public int indexOfObject(Object anObject, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexOfObjectIdenticalTo:(id)anObject;
	 */
	public int indexOfObjectIdenticalTo(Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexOfObjectIdenticalTo:(id)anObject inRange:(NSRange)range;
	 */
	public int indexOfObjectIdenticalTo(Object anObject, NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isEqualToArray:(NSArray *)otherArray;
	 */
	public boolean isEqualToArray(List otherArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)lastObject;
	 */
	public Object lastObject(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSEnumerator *)objectEnumerator;
	 */
	public NSEnumerator objectEnumerator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSEnumerator *)reverseObjectEnumerator;
	 */
	public NSEnumerator reverseObjectEnumerator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)sortedArrayHint;
	 */
	public NSData sortedArrayHint(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)sortedArrayUsingFunction:(NSInteger (*)(id, id, void *))comparator context:(void *)context;
	 */
	public List sortedArrayUsingFunction(Object comparator, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)sortedArrayUsingFunction:(NSInteger (*)(id, id, void *))comparator context:(void *)context hint:(NSData *)hint;
	 */
	public List sortedArrayUsingFunction(Object comparator, byte[] context, NSData hint){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)sortedArrayUsingSelector:(SEL)comparator;
	 */
	public List sortedArrayUsingSelector(SEL comparator){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)subarrayWithRange:(NSRange)range;
	 */
	public List subarrayWithRange(NSRange range){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile;
	 */
	public boolean writeToFile(String path, boolean useAuxiliaryFile){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)writeToURL:(NSURL *)url atomically:(BOOL)atomically;
	 */
	public boolean writeToURL(NSURL url, boolean atomically){
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
	 * - (NSArray *)objectsAtIndexes:(NSIndexSet *)indexes ;
	 */
	public List objectsAtIndexes(NSIndexSet indexes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateObjectsUsingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block ;
	 */
	public void enumerateObjectsUsingBlock(Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block ;
	 */
	public void enumerateObjectsWithOptions(int opts, Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block ;
	 */
	public void enumerateObjectsAtIndexes(NSIndexSet s, int opts, Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexOfObjectPassingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))predicate ;
	 */
	public int indexOfObjectPassingTest(Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexOfObjectWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))predicate ;
	 */
	public int indexOfObjectWithOptions(int opts, Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexOfObjectAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))predicate ;
	 */
	public int indexOfObjectAtIndexes(NSIndexSet s, int opts, Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSIndexSet *)indexesOfObjectsPassingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))predicate ;
	 */
	public NSIndexSet indexesOfObjectsPassingTest(Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSIndexSet *)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))predicate ;
	 */
	public NSIndexSet indexesOfObjectsWithOptions(int opts, Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSIndexSet *)indexesOfObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))predicate ;
	 */
	public NSIndexSet indexesOfObjectsAtIndexes(NSIndexSet s, int opts, Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)sortedArrayUsingComparator:(NSComparator)cmptr ;
	 */
	public List sortedArrayUsingComparator(Object cmptr){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)sortedArrayWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr ;
	 */
	public List sortedArrayWithOptions(int opts, Object cmptr){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)indexOfObject:(id)obj inSortedRange:(NSRange)r options:(NSBinarySearchingOptions)opts usingComparator:(NSComparator)cmp ;
	 */
	public int indexOfObject(Object obj, NSRange r, int opts, Object cmp){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getObjects:(id *)objects;
	 */
	public void getObjects(Object[] objects){
		throw new RuntimeException("Stub");
	}

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
	 * - (void)addObserver:(NSObject *)observer toObjectsAtIndexes:(NSIndexSet *)indexes forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;
	 */
	public void addObserver(NSObject observer, NSIndexSet indexes, String keyPath, int options, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObserver:(NSObject *)observer fromObjectsAtIndexes:(NSIndexSet *)indexes forKeyPath:(NSString *)keyPath;
	 */
	public void removeObserver(NSObject observer, NSIndexSet indexes, String keyPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;
	 */
	public void addObserver(NSObject observer, String keyPath, int options, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath;
	 */
	public void removeObserver(NSObject observer, String keyPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)pathsMatchingExtensions:(NSArray *)filterTypes;
	 */
	public List pathsMatchingExtensions(List filterTypes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)filteredArrayUsingPredicate:(NSPredicate *)predicate;
	 */
	public List filteredArrayUsingPredicate(NSPredicate predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)sortedArrayUsingDescriptors:(NSArray *)sortDescriptors;
	 */
	public List sortedArrayUsingDescriptors(List sortDescriptors){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
