package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UITableViewDataSource")
public interface UITableViewDataSource {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "numberOfRowsInSection")
	})
	public abstract int tableViewNumberOfRowsInSection(UITableView tableView, int section);

	/**
	 * - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "cellForRowAtIndexPath")
	})
	public abstract UITableViewCell tableViewCellForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "numberOfSectionsInTableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView")
	})
	public abstract int numberOfSectionsInTableView(UITableView tableView);

	/**
	 * - (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "titleForHeaderInSection")
	})
	public abstract String tableViewTitleForHeaderInSection(UITableView tableView, int section);

	/**
	 * - (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "titleForFooterInSection")
	})
	public abstract String tableViewTitleForFooterInSection(UITableView tableView, int section);

	/**
	 * - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "canEditRowAtIndexPath")
	})
	public abstract boolean tableViewCanEditRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "canMoveRowAtIndexPath")
	})
	public abstract boolean tableViewCanMoveRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "sectionIndexTitlesForTableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView")
	})
	public abstract List sectionIndexTitlesForTableView(UITableView tableView);

	/**
	 * - (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "sectionForSectionIndexTitle"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "atIndex")
	})
	public abstract int tableView(UITableView tableView, String title, int index);

	/**
	 * - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "commitEditingStyle"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "forRowAtIndexPath")
	})
	public abstract void tableView(UITableView tableView, int editingStyle, NSIndexPath indexPath);

	/**
	 * - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tableView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "moveRowAtIndexPath"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSIndexPath", name = "toIndexPath")
	})
	public abstract void tableView(UITableView tableView, NSIndexPath sourceIndexPath, NSIndexPath destinationIndexPath);
}
