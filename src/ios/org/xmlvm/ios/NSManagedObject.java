package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSManagedObject extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (BOOL)contextShouldIgnoreUnmodeledPropertyChanges ;
	 */
	public static boolean contextShouldIgnoreUnmodeledPropertyChanges(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithEntity:(NSEntityDescription *)entity insertIntoManagedObjectContext:(NSManagedObjectContext *)context;
	 */
	public NSManagedObject(NSEntityDescription entity, NSManagedObjectContext context) {}

	/** Default constructor */
	NSManagedObject() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSManagedObjectContext *)managedObjectContext;
	 */
	public NSManagedObjectContext managedObjectContext(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSEntityDescription *)entity;
	 */
	public NSEntityDescription entity(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSManagedObjectID *)objectID;
	 */
	public NSManagedObjectID objectID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isInserted;
	 */
	public boolean isInserted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isUpdated;
	 */
	public boolean isUpdated(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isDeleted;
	 */
	public boolean isDeleted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isFault;
	 */
	public boolean isFault(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)hasFaultForRelationshipNamed:(NSString *)key ;
	 */
	public boolean hasFaultForRelationshipNamed(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)faultingState ;
	 */
	public int faultingState(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willAccessValueForKey:(NSString *)key;
	 */
	public void willAccessValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didAccessValueForKey:(NSString *)key;
	 */
	public void didAccessValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willChangeValueForKey:(NSString *)key;
	 */
	public void willChangeValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didChangeValueForKey:(NSString *)key;
	 */
	public void didChangeValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willChangeValueForKey:(NSString *)inKey withSetMutation:(NSKeyValueSetMutationKind)inMutationKind usingObjects:(NSSet *)inObjects;
	 */
	public void willChangeValueForKey(String inKey, int inMutationKind, Set inObjects){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didChangeValueForKey:(NSString *)inKey withSetMutation:(NSKeyValueSetMutationKind)inMutationKind usingObjects:(NSSet *)inObjects;
	 */
	public void didChangeValueForKey(String inKey, int inMutationKind, Set inObjects){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setObservationInfo:(id)inObservationInfo;
	 */
	public void setObservationInfo(Object inObservationInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)observationInfo;
	 */
	public Object observationInfoAsObject(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)awakeFromFetch;
	 */
	public void awakeFromFetch(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)awakeFromInsert;
	 */
	public void awakeFromInsert(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)awakeFromSnapshotEvents:(NSSnapshotEventType)flags ;
	 */
	public void awakeFromSnapshotEvents(int flags){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)prepareForDeletion ;
	 */
	public void prepareForDeletion(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willSave;
	 */
	public void willSave(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didSave;
	 */
	public void didSave(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)willTurnIntoFault ;
	 */
	public void willTurnIntoFault(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)didTurnIntoFault;
	 */
	public void didTurnIntoFault(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)valueForKey:(NSString *)key;
	 */
	public Object valueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setValue:(id)value forKey:(NSString *)key;
	 */
	public void setValue(Object value, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)primitiveValueForKey:(NSString *)key;
	 */
	public Object primitiveValueForKey(String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPrimitiveValue:(id)value forKey:(NSString *)key;
	 */
	public void setPrimitiveValue(Object value, String key){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)committedValuesForKeys:(NSArray *)keys;
	 */
	public Map committedValuesForKeys(List keys){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)changedValues;
	 */
	public Map changedValues(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)validateValue:(id *)value forKey:(NSString *)key error:(NSError **)error;
	 */
	public boolean validateValue(Object[] value, String key, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)validateForDelete:(NSError **)error;
	 */
	public boolean validateForDelete(Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)validateForInsert:(NSError **)error;
	 */
	public boolean validateForInsert(Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)validateForUpdate:(NSError **)error;
	 */
	public boolean validateForUpdate(Reference<NSError> error){
		throw new RuntimeException("Stub");
	}
}
