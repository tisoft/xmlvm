package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UITableViewDataSource {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
	 */
	public abstract int tableViewNumberOfRowsInSection(UITableView tableView, int section);

	/**
	 * - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract UITableViewCell tableViewCellForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
	 */
	public abstract int numberOfSectionsInTableView(UITableView tableView);

	/**
	 * - (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section;
	 */
	public abstract String tableViewTitleForHeaderInSection(UITableView tableView, int section);

	/**
	 * - (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section;
	 */
	public abstract String tableViewTitleForFooterInSection(UITableView tableView, int section);

	/**
	 * - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract boolean tableViewCanEditRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract boolean tableViewCanMoveRowAtIndexPath(UITableView tableView, NSIndexPath indexPath);

	/**
	 * - (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView;
	 */
	public abstract List sectionIndexTitlesForTableView(UITableView tableView);

	/**
	 * - (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index;
	 */
	public abstract int tableView(UITableView tableView, String title, int index);

	/**
	 * - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public abstract void tableView(UITableView tableView, int editingStyle, NSIndexPath indexPath);

	/**
	 * - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath;
	 */
	public abstract void tableView(UITableView tableView, NSIndexPath sourceIndexPath, NSIndexPath destinationIndexPath);
}
