package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSManagedObjectModel extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSManagedObjectModel *)mergedModelFromBundles:(NSArray *)bundles;
	 */
	public static NSManagedObjectModel mergedModelFromBundles(List bundles){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSManagedObjectModel *)modelByMergingModels:(NSArray *)models;
	 */
	public static NSManagedObjectModel modelByMergingModels(List models){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSManagedObjectModel *)mergedModelFromBundles:(NSArray *)bundles forStoreMetadata:(NSDictionary *)metadata ;
	 */
	public static NSManagedObjectModel mergedModelFromBundles(List bundles, Map metadata){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSManagedObjectModel *)modelByMergingModels:(NSArray *)models forStoreMetadata:(NSDictionary *)metadata ;
	 */
	public static NSManagedObjectModel modelByMergingModels(List models, Map metadata){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)init;
	 */
	public NSManagedObjectModel() {}

	/**
	 * - (id)initWithContentsOfURL:(NSURL *)url;
	 */
	public NSManagedObjectModel(NSURL url) {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSDictionary *)entitiesByName;
	 */
	public Map entitiesByName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)entities;
	 */
	public List entities(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setEntities:(NSArray *)entities;
	 */
	public void setEntities(List entities){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)configurations;
	 */
	public List configurations(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)entitiesForConfiguration:(NSString *)configuration;
	 */
	public List entitiesForConfiguration(String configuration){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setEntities:(NSArray *)entities forConfiguration:(NSString *)configuration;
	 */
	public void setEntities(List entities, String configuration){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setFetchRequestTemplate:(NSFetchRequest *)fetchRequestTemplate forName:(NSString *)name;
	 */
	public void setFetchRequestTemplate(NSFetchRequest fetchRequestTemplate, String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSFetchRequest *)fetchRequestTemplateForName:(NSString *)name;
	 */
	public NSFetchRequest fetchRequestTemplateForName(String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSFetchRequest *)fetchRequestFromTemplateWithName:(NSString *)name substitutionVariables:(NSDictionary *)variables;
	 */
	public NSFetchRequest fetchRequestFromTemplateWithName(String name, Map variables){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)localizationDictionary;
	 */
	public Map localizationDictionary(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setLocalizationDictionary:(NSDictionary *)localizationDictionary;
	 */
	public void setLocalizationDictionary(Map localizationDictionary){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)fetchRequestTemplatesByName ;
	 */
	public Map fetchRequestTemplatesByName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)versionIdentifiers ;
	 */
	public Set versionIdentifiers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setVersionIdentifiers:(NSSet *)identifiers ;
	 */
	public void setVersionIdentifiers(Set identifiers){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isConfiguration:(NSString *)configuration compatibleWithStoreMetadata:(NSDictionary *)metadata ;
	 */
	public boolean isConfiguration(String configuration, Map metadata){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)entityVersionHashesByName ;
	 */
	public Map entityVersionHashesByName(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
