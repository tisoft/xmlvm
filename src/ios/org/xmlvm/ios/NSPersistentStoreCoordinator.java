package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSPersistentStoreCoordinator extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSDictionary *)registeredStoreTypes ;
	 */
	public static Map registeredStoreTypes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)registerStoreClass:(Class)storeClass forStoreType:(NSString *)storeType ;
	 */
	public static void registerStoreClass(Class storeClass, String storeType){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSDictionary *)metadataForPersistentStoreOfType:(NSString *)storeType URL:(NSURL *)url error:(NSError **)error ;
	 */
	public static Map metadataForPersistentStoreOfType(String storeType, NSURL url, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)setMetadata:(NSDictionary *)metadata forPersistentStoreOfType:(NSString *)storeType URL:(NSURL*)url error:(NSError **)error ;
	 */
	public static boolean setMetadata(Map metadata, String storeType, NSURL url, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithManagedObjectModel:(NSManagedObjectModel *)model;
	 */
	public NSPersistentStoreCoordinator(NSManagedObjectModel model) {}

	/** Default constructor */
	NSPersistentStoreCoordinator() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setMetadata:(NSDictionary *)metadata forPersistentStore:(NSPersistentStore *)store;
	 */
	public void setMetadata(Map metadata, NSPersistentStore store){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)metadataForPersistentStore:(NSPersistentStore *)store;
	 */
	public Map metadataForPersistentStore(NSPersistentStore store){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSManagedObjectModel *)managedObjectModel;
	 */
	public NSManagedObjectModel managedObjectModel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)persistentStores;
	 */
	public List persistentStores(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSPersistentStore *)persistentStoreForURL:(NSURL *)URL;
	 */
	public NSPersistentStore persistentStoreForURL(NSURL URL){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URLForPersistentStore:(NSPersistentStore *)store;
	 */
	public NSURL URLForPersistentStore(NSPersistentStore store){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)setURL:(NSURL*)url forPersistentStore:(NSPersistentStore *)store ;
	 */
	public boolean setURL(NSURL url, NSPersistentStore store){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSPersistentStore *)addPersistentStoreWithType:(NSString *)storeType configuration:(NSString *)configuration URL:(NSURL *)storeURL options:(NSDictionary *)options error:(NSError **)error;
	 */
	public NSPersistentStore addPersistentStoreWithType(String storeType, String configuration, NSURL storeURL, Map options, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)removePersistentStore:(NSPersistentStore *)store error:(NSError **)error;
	 */
	public boolean removePersistentStore(NSPersistentStore store, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSPersistentStore *)migratePersistentStore:(NSPersistentStore *)store toURL:(NSURL *)URL options:(NSDictionary *)options withType:(NSString *)storeType error:(NSError **)error;
	 */
	public NSPersistentStore migratePersistentStore(NSPersistentStore store, NSURL URL, Map options, String storeType, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSManagedObjectID *)managedObjectIDForURIRepresentation:(NSURL *)url;
	 */
	public NSManagedObjectID managedObjectIDForURIRepresentation(NSURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)lock;
	 */
	public void lock(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)unlock;
	 */
	public void unlock(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)tryLock;
	 */
	public boolean tryLock(){
		throw new RuntimeException("Stub");
	}
}
