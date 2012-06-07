package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public abstract class UITableViewDataSource implements org.xmlvm.ios.UITableViewDataSource {

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
	public int numberOfSectionsInTableView(UITableView tableView){
		return 1;
	}
	/**
	 * - (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section;
	 */
	public String tableViewTitleForHeaderInSection(UITableView tableView, int section){
		return null;
	}
	/**
	 * - (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section;
	 */
	public String tableViewTitleForFooterInSection(UITableView tableView, int section){
		return null;
	}
	/**
	 * - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public boolean tableViewCanEditRowAtIndexPath(UITableView tableView, NSIndexPath indexPath){
		return false;
	}
	/**
	 * - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public boolean tableViewCanMoveRowAtIndexPath(UITableView tableView, NSIndexPath indexPath){
		return false;
	}
	/**
	 * - (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView;
	 */
	public List sectionIndexTitlesForTableView(UITableView tableView){
		return null;
	}
	/**
	 * - (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index;
	 */
	public int tableView(UITableView tableView, String title, int index){
		return 0;
	}
	/**
	 * - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath;
	 */
	public void tableView(UITableView tableView, int editingStyle, NSIndexPath indexPath){};
	/**
	 * - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath;
	 */
	public void tableView(UITableView tableView, NSIndexPath sourceIndexPath, NSIndexPath destinationIndexPath){};}
