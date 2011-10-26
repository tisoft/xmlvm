package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UISearchDisplayDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void) searchDisplayControllerWillBeginSearch:(UISearchDisplayController *)controller;
	 */
	public abstract void searchDisplayControllerWillBeginSearch(UISearchDisplayController controller);

	/**
	 * - (void) searchDisplayControllerDidBeginSearch:(UISearchDisplayController *)controller;
	 */
	public abstract void searchDisplayControllerDidBeginSearch(UISearchDisplayController controller);

	/**
	 * - (void) searchDisplayControllerWillEndSearch:(UISearchDisplayController *)controller;
	 */
	public abstract void searchDisplayControllerWillEndSearch(UISearchDisplayController controller);

	/**
	 * - (void) searchDisplayControllerDidEndSearch:(UISearchDisplayController *)controller;
	 */
	public abstract void searchDisplayControllerDidEndSearch(UISearchDisplayController controller);

	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller didLoadSearchResultsTableView:(UITableView *)tableView;
	 */
	public abstract void didLoadSearchResultsTableView(UISearchDisplayController controller, UITableView tableView);

	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller willUnloadSearchResultsTableView:(UITableView *)tableView;
	 */
	public abstract void willUnloadSearchResultsTableView(UISearchDisplayController controller, UITableView tableView);

	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller willShowSearchResultsTableView:(UITableView *)tableView;
	 */
	public abstract void willShowSearchResultsTableView(UISearchDisplayController controller, UITableView tableView);

	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller didShowSearchResultsTableView:(UITableView *)tableView;
	 */
	public abstract void didShowSearchResultsTableView(UISearchDisplayController controller, UITableView tableView);

	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller willHideSearchResultsTableView:(UITableView *)tableView;
	 */
	public abstract void willHideSearchResultsTableView(UISearchDisplayController controller, UITableView tableView);

	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller didHideSearchResultsTableView:(UITableView *)tableView;
	 */
	public abstract void didHideSearchResultsTableView(UISearchDisplayController controller, UITableView tableView);

	/**
	 * - (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString;
	 */
	public abstract boolean shouldReloadTableForSearchString(UISearchDisplayController controller, String searchString);

	/**
	 * - (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchScope:(NSInteger)searchOption;
	 */
	public abstract boolean shouldReloadTableForSearchScope(UISearchDisplayController controller, int searchOption);
}
