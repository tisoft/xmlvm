package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "NSFetchedResultsControllerDelegate")
public interface NSFetchedResultsControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "controller", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSFetchedResultsController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "didChangeObject"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "atIndexPath"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "forChangeType"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "newIndexPath")
	})
	public abstract void didChangeObject(NSFetchedResultsController controller, Object anObject, NSIndexPath indexPath, int type, NSIndexPath newIndexPath);

	/**
	 * - (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "controller", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSFetchedResultsController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "didChangeSection"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "atIndex"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "forChangeType")
	})
	public abstract void didChangeSection(NSFetchedResultsController controller, org.xmlvm.ios.NSFetchedResultsSectionInfo sectionInfo, int sectionIndex, int type);

	/**
	 * - (void)controllerWillChangeContent:(NSFetchedResultsController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "controllerWillChangeContent", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSFetchedResultsController")
	})
	public abstract void controllerWillChangeContent(NSFetchedResultsController controller);

	/**
	 * - (void)controllerDidChangeContent:(NSFetchedResultsController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "controllerDidChangeContent", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSFetchedResultsController")
	})
	public abstract void controllerDidChangeContent(NSFetchedResultsController controller);

	/**
	 * - (NSString *)controller:(NSFetchedResultsController *)controller sectionIndexTitleForSectionName:(NSString *)sectionName ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "controller", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSFetchedResultsController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "sectionIndexTitleForSectionName")
	})
	public abstract String sectionIndexTitleForSectionName(NSFetchedResultsController controller, String sectionName);
}
