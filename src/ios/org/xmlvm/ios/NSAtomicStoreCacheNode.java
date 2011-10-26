package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSAtomicStoreCacheNode extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithObjectID:(NSManagedObjectID *)moid;
	 */
	public NSAtomicStoreCacheNode(NSManagedObjectID moid) {}

	/** Default constructor */
	NSAtomicStoreCacheNode() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSManagedObjectID*)objectID;
	 */
	public NSManagedObjectID objectID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSMutableDictionary *)propertyCache;
	 */
	public Map propertyCache(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPropertyCache:(NSMutableDictionary *)propertyCache;
	 */
	public void setPropertyCache(Map propertyCache){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)valueForKey:(NSString*)key;
	 */
	public Object valueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setValue:(id)value forKey:(NSString*)key;
	 */
	public void setValue(Object value, String key){
		throw new RuntimeException("Stub");
	}
}
