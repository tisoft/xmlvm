package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSDictionary extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)dictionary;
	 */
	public static Map dictionary(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dictionaryWithObject:(id)object forKey:(id)key;
	 */
	public static Map dictionaryWithObject(Object object, Object key){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dictionaryWithObjects:(id *)objects forKeys:(id *)keys count:(NSUInteger)cnt;
	 */
	public static Map dictionaryWithObjects(Object[] objects, Object[] keys, int cnt){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dictionaryWithObjectsAndKeys:(id)firstObject, ... ;
	 */
	public static Map dictionaryWithObjectsAndKeys(Object... firstObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dictionaryWithDictionary:(NSDictionary *)dict;
	 */
	public static Map dictionaryWithDictionary(Map dict){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dictionaryWithObjects:(NSArray *)objects forKeys:(NSArray *)keys;
	 */
	public static Map dictionaryWithObjects(List objects, List keys){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dictionaryWithContentsOfFile:(NSString *)path;
	 */
	public static Map dictionaryWithContentsOfFile(String path){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)dictionaryWithContentsOfURL:(NSURL *)url;
	 */
	public static Map dictionaryWithContentsOfURL(NSURL url){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithObjects:(id *)objects forKeys:(id *)keys count:(NSUInteger)cnt;
	 */
	public NSDictionary(Object[] objects, Object[] keys, int cnt) {}

	/**
	 * - (id)initWithObjectsAndKeys:(id)firstObject, ... ;
	 */
	public NSDictionary(Object... firstObject) {}

	/**
	 * - (id)initWithDictionary:(NSDictionary *)otherDictionary;
	 */
	public NSDictionary(Map otherDictionary) {}

	/**
	 * - (id)initWithDictionary:(NSDictionary *)otherDictionary copyItems:(BOOL)flag;
	 */
	public NSDictionary(Map otherDictionary, boolean flag) {}

	/**
	 * - (id)initWithObjects:(NSArray *)objects forKeys:(NSArray *)keys;
	 */
	public NSDictionary(List objects, List keys) {}

	/**
	 * - (id)initWithContentsOfFile:(NSString *)path;
	 */
	public NSDictionary(String path) {}

	/**
	 * - (id)initWithContentsOfURL:(NSURL *)url;
	 */
	public NSDictionary(NSURL url) {}

	/** Default constructor */
	NSDictionary() {}

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
	 * - (id)objectForKey:(id)aKey;
	 */
	public Object objectForKey(Object aKey){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSEnumerator *)keyEnumerator;
	 */
	public NSEnumerator keyEnumerator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)allKeys;
	 */
	public List allKeys(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)allKeysForObject:(id)anObject;
	 */
	public List allKeysForObject(Object anObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)allValues;
	 */
	public List allValues(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)description;
	 */
	public String description(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)descriptionInStringsFileFormat;
	 */
	public String descriptionInStringsFileFormat(){
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
	 * - (BOOL)isEqualToDictionary:(NSDictionary *)otherDictionary;
	 */
	public boolean isEqualToDictionary(Map otherDictionary){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSEnumerator *)objectEnumerator;
	 */
	public NSEnumerator objectEnumerator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)objectsForKeys:(NSArray *)keys notFoundMarker:(id)marker;
	 */
	public List objectsForKeys(List keys, Object marker){
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
	 * - (NSArray *)keysSortedByValueUsingSelector:(SEL)comparator;
	 */
	public List keysSortedByValueUsingSelector(SEL comparator){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)getObjects:(id *)objects andKeys:(id *)keys;
	 */
	public void getObjects(Object[] objects, Object[] keys){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateKeysAndObjectsUsingBlock:(void (^)(id key, id obj, BOOL *stop))block ;
	 */
	public void enumerateKeysAndObjectsUsingBlock(Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enumerateKeysAndObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id key, id obj, BOOL *stop))block ;
	 */
	public void enumerateKeysAndObjectsWithOptions(int opts, Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)keysSortedByValueUsingComparator:(NSComparator)cmptr ;
	 */
	public List keysSortedByValueUsingComparator(Object cmptr){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)keysSortedByValueWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr ;
	 */
	public List keysSortedByValueWithOptions(int opts, Object cmptr){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)keysOfEntriesPassingTest:(BOOL (^)(id key, id obj, BOOL *stop))predicate ;
	 */
	public Set keysOfEntriesPassingTest(Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)keysOfEntriesWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id key, id obj, BOOL *stop))predicate ;
	 */
	public Set keysOfEntriesWithOptions(int opts, Object predicate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (unsigned long long)fileSize;
	 */
	public long fileSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)fileModificationDate;
	 */
	public NSDate fileModificationDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)fileType;
	 */
	public String fileType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)filePosixPermissions;
	 */
	public int filePosixPermissions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)fileOwnerAccountName;
	 */
	public String fileOwnerAccountName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)fileGroupOwnerAccountName;
	 */
	public String fileGroupOwnerAccountName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)fileSystemNumber;
	 */
	public int fileSystemNumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)fileSystemFileNumber;
	 */
	public int fileSystemFileNumber(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileExtensionHidden;
	 */
	public boolean fileExtensionHidden(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (OSType)fileHFSCreatorCode;
	 */
	public int fileHFSCreatorCode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (OSType)fileHFSTypeCode;
	 */
	public int fileHFSTypeCode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileIsImmutable;
	 */
	public boolean fileIsImmutable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)fileIsAppendOnly;
	 */
	public boolean fileIsAppendOnly(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate *)fileCreationDate;
	 */
	public NSDate fileCreationDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSNumber *)fileOwnerAccountID;
	 */
	public NSNumber fileOwnerAccountID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSNumber *)fileGroupOwnerAccountID;
	 */
	public NSNumber fileGroupOwnerAccountID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)valueForKey:(NSString *)key;
	 */
	public Object valueForKey(String key){
		throw new RuntimeException("Stub");
	}
}
