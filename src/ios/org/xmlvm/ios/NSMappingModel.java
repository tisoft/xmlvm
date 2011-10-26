package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSMappingModel extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSMappingModel *)mappingModelFromBundles:(NSArray *)bundles forSourceModel:(NSManagedObjectModel *)sourceModel destinationModel:(NSManagedObjectModel *)destinationModel;
	 */
	public static NSMappingModel mappingModelFromBundles(List bundles, NSManagedObjectModel sourceModel, NSManagedObjectModel destinationModel){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSMappingModel *)inferredMappingModelForSourceModel:(NSManagedObjectModel *)sourceModel destinationModel:(NSManagedObjectModel *)destinationModel error:(NSError **)error AVAILABLE_MAC_OS_X_VERSION_10_6_AND_LATER;
	 */
	public static NSMappingModel inferredMappingModelForSourceModel(NSManagedObjectModel sourceModel, NSManagedObjectModel destinationModel, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithContentsOfURL:(NSURL *)url;
	 */
	public NSMappingModel(NSURL url) {}

	/** Default constructor */
	NSMappingModel() {}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSArray *)entityMappings;
	 */
	public List entityMappings(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setEntityMappings:(NSArray *)mappings;
	 */
	public void setEntityMappings(List mappings){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)entityMappingsByName;
	 */
	public Map entityMappingsByName(){
		throw new RuntimeException("Stub");
	}
}
