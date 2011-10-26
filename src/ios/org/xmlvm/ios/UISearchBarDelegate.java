package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UISearchBarDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar;
	 */
	public abstract boolean searchBarShouldBeginEditing(UISearchBar searchBar);

	/**
	 * - (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar;
	 */
	public abstract void searchBarTextDidBeginEditing(UISearchBar searchBar);

	/**
	 * - (BOOL)searchBarShouldEndEditing:(UISearchBar *)searchBar;
	 */
	public abstract boolean searchBarShouldEndEditing(UISearchBar searchBar);

	/**
	 * - (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar;
	 */
	public abstract void searchBarTextDidEndEditing(UISearchBar searchBar);

	/**
	 * - (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText;
	 */
	public abstract void textDidChange(UISearchBar searchBar, String searchText);

	/**
	 * - (BOOL)searchBar:(UISearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text ;
	 */
	public abstract boolean shouldChangeTextInRange(UISearchBar searchBar, NSRange range, String text);

	/**
	 * - (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar;
	 */
	public abstract void searchBarSearchButtonClicked(UISearchBar searchBar);

	/**
	 * - (void)searchBarBookmarkButtonClicked:(UISearchBar *)searchBar;
	 */
	public abstract void searchBarBookmarkButtonClicked(UISearchBar searchBar);

	/**
	 * - (void)searchBarCancelButtonClicked:(UISearchBar *) searchBar;
	 */
	public abstract void searchBarCancelButtonClicked(UISearchBar searchBar);

	/**
	 * - (void)searchBarResultsListButtonClicked:(UISearchBar *)searchBar ;
	 */
	public abstract void searchBarResultsListButtonClicked(UISearchBar searchBar);

	/**
	 * - (void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope ;
	 */
	public abstract void selectedScopeButtonIndexDidChange(UISearchBar searchBar, int selectedScope);
}
