package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UISearchDisplayDelegate implements org.xmlvm.ios.UISearchDisplayDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void) searchDisplayControllerWillBeginSearch:(UISearchDisplayController *)controller;
	 */
	public void searchDisplayControllerWillBeginSearch(UISearchDisplayController controller){};
	/**
	 * - (void) searchDisplayControllerDidBeginSearch:(UISearchDisplayController *)controller;
	 */
	public void searchDisplayControllerDidBeginSearch(UISearchDisplayController controller){};
	/**
	 * - (void) searchDisplayControllerWillEndSearch:(UISearchDisplayController *)controller;
	 */
	public void searchDisplayControllerWillEndSearch(UISearchDisplayController controller){};
	/**
	 * - (void) searchDisplayControllerDidEndSearch:(UISearchDisplayController *)controller;
	 */
	public void searchDisplayControllerDidEndSearch(UISearchDisplayController controller){};
	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller didLoadSearchResultsTableView:(UITableView *)tableView;
	 */
	public void didLoadSearchResultsTableView(UISearchDisplayController controller, UITableView tableView){};
	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller willUnloadSearchResultsTableView:(UITableView *)tableView;
	 */
	public void willUnloadSearchResultsTableView(UISearchDisplayController controller, UITableView tableView){};
	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller willShowSearchResultsTableView:(UITableView *)tableView;
	 */
	public void willShowSearchResultsTableView(UISearchDisplayController controller, UITableView tableView){};
	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller didShowSearchResultsTableView:(UITableView *)tableView;
	 */
	public void didShowSearchResultsTableView(UISearchDisplayController controller, UITableView tableView){};
	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller willHideSearchResultsTableView:(UITableView *)tableView;
	 */
	public void willHideSearchResultsTableView(UISearchDisplayController controller, UITableView tableView){};
	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller didHideSearchResultsTableView:(UITableView *)tableView;
	 */
	public void didHideSearchResultsTableView(UISearchDisplayController controller, UITableView tableView){};
	/**
	 * - (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString;
	 */
	public boolean shouldReloadTableForSearchString(UISearchDisplayController controller, String searchString){
		return false;
	}
	/**
	 * - (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchScope:(NSInteger)searchOption;
	 */
	public boolean shouldReloadTableForSearchScope(UISearchDisplayController controller, int searchOption){
		return false;
	}}
