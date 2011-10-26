package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSFetchedResultsSectionInfo {

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSString *name;
	 */
	public abstract String getName();

	/**
	 * @property(nonatomic, readonly) NSString *indexTitle;
	 */
	public abstract String getIndexTitle();

	/**
	 * @property(nonatomic, readonly) NSUInteger numberOfObjects;
	 */
	public abstract int getNumberOfObjects();

	/**
	 * @property(nonatomic, readonly) NSArray *objects;
	 */
	public abstract List getObjects();
}
