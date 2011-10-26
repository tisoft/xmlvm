package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface NSFetchedResultsControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath;
	 */
	public abstract void didChangeObject(NSFetchedResultsController controller, Object anObject, NSIndexPath indexPath, int type, NSIndexPath newIndexPath);

	/**
	 * - (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type;
	 */
	public abstract void didChangeSection(NSFetchedResultsController controller, NSFetchedResultsSectionInfo sectionInfo, int sectionIndex, int type);

	/**
	 * - (void)controllerWillChangeContent:(NSFetchedResultsController *)controller;
	 */
	public abstract void controllerWillChangeContent(NSFetchedResultsController controller);

	/**
	 * - (void)controllerDidChangeContent:(NSFetchedResultsController *)controller;
	 */
	public abstract void controllerDidChangeContent(NSFetchedResultsController controller);

	/**
	 * - (NSString *)controller:(NSFetchedResultsController *)controller sectionIndexTitleForSectionName:(NSString *)sectionName ;
	 */
	public abstract String sectionIndexTitleForSectionName(NSFetchedResultsController controller, String sectionName);
}
