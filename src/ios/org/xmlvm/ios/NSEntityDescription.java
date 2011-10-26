package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSEntityDescription extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSEntityDescription *)entityForName:(NSString *)entityName inManagedObjectContext:(NSManagedObjectContext *)context;
	 */
	public static NSEntityDescription entityForName(String entityName, NSManagedObjectContext context){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)insertNewObjectForEntityForName:(NSString *)entityName inManagedObjectContext:(NSManagedObjectContext *)context;
	 */
	public static Object insertNewObjectForEntityForName(String entityName, NSManagedObjectContext context){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSEntityDescription() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSManagedObjectModel *)managedObjectModel;
	 */
	public NSManagedObjectModel managedObjectModel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)managedObjectClassName;
	 */
	public String managedObjectClassName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setManagedObjectClassName:(NSString *)name;
	 */
	public void setManagedObjectClassName(String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)name;
	 */
	public String name(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setName:(NSString *)name;
	 */
	public void setName(String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isAbstract;
	 */
	public boolean isAbstract(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setAbstract:(BOOL)flag;
	 */
	public void setAbstract(boolean flag){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)subentitiesByName;
	 */
	public Map subentitiesByName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)subentities;
	 */
	public List subentities(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setSubentities:(NSArray *)array;
	 */
	public void setSubentities(List array){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSEntityDescription *)superentity;
	 */
	public NSEntityDescription superentity(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)propertiesByName;
	 */
	public Map propertiesByName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)properties;
	 */
	public List properties(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setProperties:(NSArray *)properties;
	 */
	public void setProperties(List properties){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)userInfo;
	 */
	public Map userInfo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setUserInfo:(NSDictionary *)dictionary;
	 */
	public void setUserInfo(Map dictionary){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)attributesByName;
	 */
	public Map attributesByName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)relationshipsByName;
	 */
	public Map relationshipsByName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)relationshipsWithDestinationEntity:(NSEntityDescription *)entity;
	 */
	public List relationshipsWithDestinationEntity(NSEntityDescription entity){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isKindOfEntity:(NSEntityDescription *)entity ;
	 */
	public boolean isKindOfEntity(NSEntityDescription entity){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)versionHash ;
	 */
	public NSData versionHash(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)versionHashModifier ;
	 */
	public String versionHashModifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setVersionHashModifier:(NSString *)modifierString ;
	 */
	public void setVersionHashModifier(String modifierString){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)renamingIdentifier ;
	 */
	public String renamingIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setRenamingIdentifier:(NSString *)value ;
	 */
	public void setRenamingIdentifier(String value){
		throw new RuntimeException("Stub");
	}
}
