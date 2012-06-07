package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSMigrationManager extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithSourceModel:(NSManagedObjectModel *)sourceModel destinationModel:(NSManagedObjectModel *)destinationModel;
	 */
	public NSMigrationManager(NSManagedObjectModel sourceModel, NSManagedObjectModel destinationModel) {}

	/** Default constructor */
	public NSMigrationManager() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)migrateStoreFromURL:(NSURL *)sourceURL type:(NSString *)sStoreType options:(NSDictionary *)sOptions withMappingModel:(NSMappingModel *)mappings toDestinationURL:(NSURL *)dURL destinationType:(NSString *)dStoreType destinationOptions:(NSDictionary *)dOptions error:(NSError **)error;
	 */
	public boolean migrateStoreFromURL(NSURL sourceURL, String sStoreType, Map sOptions, NSMappingModel mappings, NSURL dURL, String dStoreType, Map dOptions, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)reset;
	 */
	public void reset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSMappingModel *)mappingModel;
	 */
	public NSMappingModel mappingModel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSManagedObjectModel *)sourceModel;
	 */
	public NSManagedObjectModel sourceModel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSManagedObjectModel *)destinationModel;
	 */
	public NSManagedObjectModel destinationModel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSManagedObjectContext *)sourceContext;
	 */
	public NSManagedObjectContext sourceContext(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSManagedObjectContext *)destinationContext;
	 */
	public NSManagedObjectContext destinationContext(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSEntityDescription *)sourceEntityForEntityMapping:(NSEntityMapping *)mEntity;
	 */
	public NSEntityDescription sourceEntityForEntityMapping(NSEntityMapping mEntity){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSEntityDescription *)destinationEntityForEntityMapping:(NSEntityMapping *)mEntity;
	 */
	public NSEntityDescription destinationEntityForEntityMapping(NSEntityMapping mEntity){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)associateSourceInstance:(NSManagedObject *)sourceInstance withDestinationInstance:(NSManagedObject *)destinationInstance forEntityMapping:(NSEntityMapping *)entityMapping;
	 */
	public void associateSourceInstance(NSManagedObject sourceInstance, NSManagedObject destinationInstance, NSEntityMapping entityMapping){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)destinationInstancesForEntityMappingNamed:(NSString *)mappingName sourceInstances:(NSArray*)sourceInstances;
	 */
	public List destinationInstancesForEntityMappingNamed(String mappingName, List sourceInstances){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)sourceInstancesForEntityMappingNamed:(NSString *)mappingName destinationInstances:(NSArray *)destinationInstances;
	 */
	public List sourceInstancesForEntityMappingNamed(String mappingName, List destinationInstances){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSEntityMapping *)currentEntityMapping;
	 */
	public NSEntityMapping currentEntityMapping(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (float)migrationProgress;
	 */
	public float migrationProgress(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)userInfo;
	 */
	public Map userInfo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setUserInfo:(NSDictionary *)dict;
	 */
	public void setUserInfo(Map dict){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelMigrationWithError:(NSError *)error;
	 */
	public void cancelMigrationWithError(NSError error){
		throw new RuntimeException("Stub");
	}
}
