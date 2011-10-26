package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSPersistentStore extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSDictionary *)metadataForPersistentStoreWithURL:(NSURL *)url error:(NSError **)error;
	 */
	public static Map metadataForPersistentStoreWithURL(NSURL url, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)setMetadata:(NSDictionary *)metadata forPersistentStoreWithURL:(NSURL*)url error:(NSError **)error;
	 */
	public static boolean setMetadata(Map metadata, NSURL url, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (Class)migrationManagerClass ;
	 */
	public static Class migrationManagerClass(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)root configurationName:(NSString *)name URL:(NSURL *)url options:(NSDictionary *)options ;
	 */
	public NSPersistentStore(NSPersistentStoreCoordinator root, String name, NSURL url, Map options) {}

	/** Default constructor */
	NSPersistentStore() {}

	/*
	 * Instance methods
	 */

	/**
	 * -(BOOL)loadMetadata:(NSError **)error;
	 */
	public boolean loadMetadata(Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSPersistentStoreCoordinator*) persistentStoreCoordinator;
	 */
	public NSPersistentStoreCoordinator  persistentStoreCoordinator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)configurationName;
	 */
	public String configurationName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)options;
	 */
	public Map options(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSURL *)URL;
	 */
	public NSURL URL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setURL:(NSURL *)url;
	 */
	public void setURL(NSURL url){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)identifier;
	 */
	public String identifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setIdentifier:(NSString *)identifier;
	 */
	public void setIdentifier(String identifier){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)type;
	 */
	public String type(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isReadOnly;
	 */
	public boolean isReadOnly(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setReadOnly:(BOOL)flag;
	 */
	public void setReadOnly(boolean flag){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)metadata;
	 */
	public Map metadata(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMetadata:(NSDictionary *)storeMetadata;
	 */
	public void setMetadata(Map storeMetadata){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didAddToPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)coordinator;
	 */
	public void didAddToPersistentStoreCoordinator(NSPersistentStoreCoordinator coordinator){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willRemoveFromPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)coordinator;
	 */
	public void willRemoveFromPersistentStoreCoordinator(NSPersistentStoreCoordinator coordinator){
		throw new RuntimeException("Stub");
	}
}
