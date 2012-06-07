package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UISearchDisplayDelegate")
public interface UISearchDisplayDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void) searchDisplayControllerWillBeginSearch:(UISearchDisplayController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchDisplayControllerWillBeginSearch", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchDisplayController")
	})
	public abstract void searchDisplayControllerWillBeginSearch(UISearchDisplayController controller);

	/**
	 * - (void) searchDisplayControllerDidBeginSearch:(UISearchDisplayController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchDisplayControllerDidBeginSearch", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchDisplayController")
	})
	public abstract void searchDisplayControllerDidBeginSearch(UISearchDisplayController controller);

	/**
	 * - (void) searchDisplayControllerWillEndSearch:(UISearchDisplayController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchDisplayControllerWillEndSearch", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchDisplayController")
	})
	public abstract void searchDisplayControllerWillEndSearch(UISearchDisplayController controller);

	/**
	 * - (void) searchDisplayControllerDidEndSearch:(UISearchDisplayController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchDisplayControllerDidEndSearch", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchDisplayController")
	})
	public abstract void searchDisplayControllerDidEndSearch(UISearchDisplayController controller);

	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller didLoadSearchResultsTableView:(UITableView *)tableView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchDisplayController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchDisplayController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView", name = "didLoadSearchResultsTableView")
	})
	public abstract void didLoadSearchResultsTableView(UISearchDisplayController controller, UITableView tableView);

	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller willUnloadSearchResultsTableView:(UITableView *)tableView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchDisplayController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchDisplayController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView", name = "willUnloadSearchResultsTableView")
	})
	public abstract void willUnloadSearchResultsTableView(UISearchDisplayController controller, UITableView tableView);

	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller willShowSearchResultsTableView:(UITableView *)tableView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchDisplayController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchDisplayController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView", name = "willShowSearchResultsTableView")
	})
	public abstract void willShowSearchResultsTableView(UISearchDisplayController controller, UITableView tableView);

	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller didShowSearchResultsTableView:(UITableView *)tableView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchDisplayController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchDisplayController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView", name = "didShowSearchResultsTableView")
	})
	public abstract void didShowSearchResultsTableView(UISearchDisplayController controller, UITableView tableView);

	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller willHideSearchResultsTableView:(UITableView *)tableView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchDisplayController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchDisplayController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView", name = "willHideSearchResultsTableView")
	})
	public abstract void willHideSearchResultsTableView(UISearchDisplayController controller, UITableView tableView);

	/**
	 * - (void)searchDisplayController:(UISearchDisplayController *)controller didHideSearchResultsTableView:(UITableView *)tableView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchDisplayController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchDisplayController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITableView", name = "didHideSearchResultsTableView")
	})
	public abstract void didHideSearchResultsTableView(UISearchDisplayController controller, UITableView tableView);

	/**
	 * - (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchDisplayController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchDisplayController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "shouldReloadTableForSearchString")
	})
	public abstract boolean shouldReloadTableForSearchString(UISearchDisplayController controller, String searchString);

	/**
	 * - (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchScope:(NSInteger)searchOption;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchDisplayController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchDisplayController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "shouldReloadTableForSearchScope")
	})
	public abstract boolean shouldReloadTableForSearchScope(UISearchDisplayController controller, int searchOption);
}
