package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSEntityMigrationPolicy extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSEntityMigrationPolicy() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)beginEntityMapping:(NSEntityMapping *)mapping manager:(NSMigrationManager *)manager error:(NSError **)error;
	 */
	public boolean beginEntityMapping(NSEntityMapping mapping, NSMigrationManager manager, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)createDestinationInstancesForSourceInstance:(NSManagedObject *)sInstance entityMapping:(NSEntityMapping *)mapping manager:(NSMigrationManager *)manager error:(NSError **)error;
	 */
	public boolean createDestinationInstancesForSourceInstance(NSManagedObject sInstance, NSEntityMapping mapping, NSMigrationManager manager, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)endInstanceCreationForEntityMapping:(NSEntityMapping *)mapping manager:(NSMigrationManager *)manager error:(NSError **)error;
	 */
	public boolean endInstanceCreationForEntityMapping(NSEntityMapping mapping, NSMigrationManager manager, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)createRelationshipsForDestinationInstance:(NSManagedObject *)dInstance entityMapping:(NSEntityMapping *)mapping manager:(NSMigrationManager *)manager error:(NSError **)error;
	 */
	public boolean createRelationshipsForDestinationInstance(NSManagedObject dInstance, NSEntityMapping mapping, NSMigrationManager manager, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)endRelationshipCreationForEntityMapping:(NSEntityMapping *)mapping manager:(NSMigrationManager *)manager error:(NSError **)error;
	 */
	public boolean endRelationshipCreationForEntityMapping(NSEntityMapping mapping, NSMigrationManager manager, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)performCustomValidationForEntityMapping:(NSEntityMapping *)mapping manager:(NSMigrationManager *)manager error:(NSError **)error;
	 */
	public boolean performCustomValidationForEntityMapping(NSEntityMapping mapping, NSMigrationManager manager, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)endEntityMapping:(NSEntityMapping *)mapping manager:(NSMigrationManager *)manager error:(NSError **)error;
	 */
	public boolean endEntityMapping(NSEntityMapping mapping, NSMigrationManager manager, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}
}
