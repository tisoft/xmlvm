package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class NSFetchedResultsControllerDelegate implements org.xmlvm.ios.NSFetchedResultsControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath;
	 */
	public void didChangeObject(NSFetchedResultsController controller, Object anObject, NSIndexPath indexPath, int type, NSIndexPath newIndexPath){};
	/**
	 * - (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type;
	 */
	public void didChangeSection(NSFetchedResultsController controller, org.xmlvm.ios.NSFetchedResultsSectionInfo sectionInfo, int sectionIndex, int type){};
	/**
	 * - (void)controllerWillChangeContent:(NSFetchedResultsController *)controller;
	 */
	public void controllerWillChangeContent(NSFetchedResultsController controller){};
	/**
	 * - (void)controllerDidChangeContent:(NSFetchedResultsController *)controller;
	 */
	public void controllerDidChangeContent(NSFetchedResultsController controller){};
	/**
	 * - (NSString *)controller:(NSFetchedResultsController *)controller sectionIndexTitleForSectionName:(NSString *)sectionName ;
	 */
	public String sectionIndexTitleForSectionName(NSFetchedResultsController controller, String sectionName){
		return null;
	}}
