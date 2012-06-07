package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSAtomicStore extends NSPersistentStore {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)coordinator configurationName:(NSString *)configurationName URL:(NSURL *)url options:(NSDictionary *)options;
	 */
	public NSAtomicStore(NSPersistentStoreCoordinator coordinator, String configurationName, NSURL url, Map options) {}

	/** Default constructor */
	public NSAtomicStore() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)load:(NSError **)error;
	 */
	public boolean load(Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)save:(NSError **)error;
	 */
	public boolean save(Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSAtomicStoreCacheNode *)newCacheNodeForManagedObject:(NSManagedObject *)managedObject;
	 */
	public NSAtomicStoreCacheNode newCacheNodeForManagedObject(NSManagedObject managedObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)updateCacheNode:(NSAtomicStoreCacheNode *)node fromManagedObject:(NSManagedObject *)managedObject;
	 */
	public void updateCacheNode(NSAtomicStoreCacheNode node, NSManagedObject managedObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)cacheNodes;
	 */
	public Set cacheNodes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addCacheNodes:(NSSet *)cacheNodes;
	 */
	public void addCacheNodes(Set cacheNodes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willRemoveCacheNodes:(NSSet *)cacheNodes;
	 */
	public void willRemoveCacheNodes(Set cacheNodes){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSAtomicStoreCacheNode *)cacheNodeForObjectID:(NSManagedObjectID *)objectID;
	 */
	public NSAtomicStoreCacheNode cacheNodeForObjectID(NSManagedObjectID objectID){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSManagedObjectID *)objectIDForEntity:(NSEntityDescription *)entity referenceObject:(id)data;
	 */
	public NSManagedObjectID objectIDForEntity(NSEntityDescription entity, Object data){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)newReferenceObjectForManagedObject:(NSManagedObject *)managedObject;
	 */
	public Object newReferenceObjectForManagedObject(NSManagedObject managedObject){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)referenceObjectForObjectID:(NSManagedObjectID *)objectID;
	 */
	public Object referenceObjectForObjectID(NSManagedObjectID objectID){
		throw new RuntimeException("Stub");
	}
}
