package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSMutableDictionary extends NSDictionary {

	/*
	 * Static methods
	 */

	/**
	 * + (id)dictionaryWithCapacity:(NSUInteger)numItems;
	 */
	public static Map dictionaryWithCapacity(int numItems){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */
	public NSMutableDictionary(Object[] objects, Object[] keys, int cnt) {
		super(objects, keys, cnt);
	}
	public NSMutableDictionary(Object... firstObject) {
		super(firstObject);
	}
	public NSMutableDictionary(Map otherDictionary) {
		super(otherDictionary);
	}
	public NSMutableDictionary(Map otherDictionary, boolean flag) {
		super(otherDictionary, flag);
	}
	public NSMutableDictionary(List objects, List keys) {
		super(objects, keys);
	}
	public NSMutableDictionary(String path) {
		super(path);
	}
	public NSMutableDictionary(NSURL url) {
		super(url);
	}

	/**
	 * - (id)initWithCapacity:(NSUInteger)numItems;
	 */
	public NSMutableDictionary(int numItems) {}

	/** Default constructor */
	public NSMutableDictionary() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)removeObjectForKey:(id)aKey;
	 */
	public void removeObjectForKey(Object aKey){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setObject:(id)anObject forKey:(id)aKey;
	 */
	public void setObject(Object anObject, Object aKey){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addEntriesFromDictionary:(NSDictionary *)otherDictionary;
	 */
	public void addEntriesFromDictionary(Map otherDictionary){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeAllObjects;
	 */
	public void removeAllObjects(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeObjectsForKeys:(NSArray *)keyArray;
	 */
	public void removeObjectsForKeys(List keyArray){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDictionary:(NSDictionary *)otherDictionary;
	 */
	public void setDictionary(Map otherDictionary){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setValue:(id)value forKey:(NSString *)key ;
	 */
	public void setValue(Object value, String key){
		throw new RuntimeException("Stub");
	}
}
