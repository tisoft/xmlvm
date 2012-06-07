package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSManagedObjectContext extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSManagedObjectContext() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)coordinator;
	 */
	public void setPersistentStoreCoordinator(NSPersistentStoreCoordinator coordinator){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSPersistentStoreCoordinator *)persistentStoreCoordinator;
	 */
	public NSPersistentStoreCoordinator persistentStoreCoordinator(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setUndoManager:(NSUndoManager *)undoManager;
	 */
	public void setUndoManager(NSUndoManager undoManager){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUndoManager *)undoManager;
	 */
	public NSUndoManager undoManager(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)hasChanges;
	 */
	public boolean hasChanges(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSManagedObject *)objectRegisteredForID:(NSManagedObjectID *)objectID;
	 */
	public NSManagedObject objectRegisteredForID(NSManagedObjectID objectID){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSManagedObject *)objectWithID:(NSManagedObjectID *)objectID;
	 */
	public NSManagedObject objectWithID(NSManagedObjectID objectID){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSManagedObject*)existingObjectWithID:(NSManagedObjectID*)objectID error:(NSError**)error ;
	 */
	public NSManagedObject existingObjectWithID(NSManagedObjectID objectID, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)executeFetchRequest:(NSFetchRequest *)request error:(NSError **)error;
	 */
	public List executeFetchRequest(NSFetchRequest request, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger) countForFetchRequest: (NSFetchRequest *)request error: (NSError **)error ;
	 */
	public int countForFetchRequest(NSFetchRequest request, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertObject:(NSManagedObject *)object;
	 */
	public void insertObject(NSManagedObject object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)deleteObject:(NSManagedObject *)object;
	 */
	public void deleteObject(NSManagedObject object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)refreshObject:(NSManagedObject *)object mergeChanges:(BOOL)flag;
	 */
	public void refreshObject(NSManagedObject object, boolean flag){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)detectConflictsForObject:(NSManagedObject *)object;
	 */
	public void detectConflictsForObject(NSManagedObject object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context;
	 */
	public void observeValueForKeyPath(String keyPath, Object object, Map change, byte[] context){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)processPendingChanges;
	 */
	public void processPendingChanges(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)assignObject:(id)object toPersistentStore:(NSPersistentStore *)store;
	 */
	public void assignObject(Object object, NSPersistentStore store){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)insertedObjects;
	 */
	public Set insertedObjects(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)updatedObjects;
	 */
	public Set updatedObjects(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)deletedObjects;
	 */
	public Set deletedObjects(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)registeredObjects;
	 */
	public Set registeredObjects(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)undo;
	 */
	public void undo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)redo;
	 */
	public void redo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)reset;
	 */
	public void reset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)rollback;
	 */
	public void rollback(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)save:(NSError **)error;
	 */
	public boolean save(Reference<NSError> error){
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

	/**
	 * - (BOOL)propagatesDeletesAtEndOfEvent;
	 */
	public boolean propagatesDeletesAtEndOfEvent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setPropagatesDeletesAtEndOfEvent:(BOOL)flag;
	 */
	public void setPropagatesDeletesAtEndOfEvent(boolean flag){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)retainsRegisteredObjects;
	 */
	public boolean retainsRegisteredObjects(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setRetainsRegisteredObjects:(BOOL)flag;
	 */
	public void setRetainsRegisteredObjects(boolean flag){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSTimeInterval)stalenessInterval;
	 */
	public double stalenessInterval(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setStalenessInterval:(NSTimeInterval)expiration;
	 */
	public void setStalenessInterval(double expiration){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMergePolicy:(id)mergePolicy;
	 */
	public void setMergePolicy(Object mergePolicy){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)mergePolicy;
	 */
	public Object mergePolicy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)obtainPermanentIDsForObjects:(NSArray *)objects error:(NSError **)error ;
	 */
	public boolean obtainPermanentIDsForObjects(List objects, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)mergeChangesFromContextDidSaveNotification:(NSNotification *)notification ;
	 */
	public void mergeChangesFromContextDidSaveNotification(NSNotification notification){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
