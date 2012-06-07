package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSFetchedResultsController extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (void)deleteCacheWithName:(NSString *)name;
	 */
	public static void deleteCacheWithName(String name){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithFetchRequest:(NSFetchRequest *)fetchRequest managedObjectContext: (NSManagedObjectContext *)context sectionNameKeyPath:(NSString *)sectionNameKeyPath cacheName:(NSString *)name;
	 */
	public NSFetchedResultsController(NSFetchRequest fetchRequest, NSManagedObjectContext context, String sectionNameKeyPath, String name) {}

	/** Default constructor */
	public NSFetchedResultsController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSFetchRequest *fetchRequest;
	 */
	public NSFetchRequest getFetchRequest(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSManagedObjectContext *managedObjectContext;
	 */
	public NSManagedObjectContext getManagedObjectContext(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *sectionNameKeyPath;
	 */
	public String getSectionNameKeyPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *cacheName;
	 */
	public String getCacheName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id< NSFetchedResultsControllerDelegate > delegate;
	 */
	public org.xmlvm.ios.NSFetchedResultsControllerDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id< NSFetchedResultsControllerDelegate > delegate;
	 */
	public void setDelegate(org.xmlvm.ios.NSFetchedResultsControllerDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *fetchedObjects;
	 */
	public List getFetchedObjects(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *sectionIndexTitles;
	 */
	public List getSectionIndexTitles(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *sections;
	 */
	public List getSections(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)performFetch:(NSError **)error;
	 */
	public boolean performFetch(Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)objectAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public Object objectAtIndexPath(NSIndexPath indexPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * -(NSIndexPath *)indexPathForObject:(id)object;
	 */
	public NSIndexPath indexPathForObject(Object object){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)sectionIndexTitleForSectionName:(NSString *)sectionName;
	 */
	public String sectionIndexTitleForSectionName(String sectionName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)sectionIndex;
	 */
	public int sectionForSectionIndexTitle(String title, int sectionIndex){
		throw new RuntimeException("Stub");
	}
}
