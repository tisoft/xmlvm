package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UISearchBarDelegate implements org.xmlvm.ios.UISearchBarDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar;
	 */
	public boolean searchBarShouldBeginEditing(UISearchBar searchBar){
		return false;
	}
	/**
	 * - (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar;
	 */
	public void searchBarTextDidBeginEditing(UISearchBar searchBar){};
	/**
	 * - (BOOL)searchBarShouldEndEditing:(UISearchBar *)searchBar;
	 */
	public boolean searchBarShouldEndEditing(UISearchBar searchBar){
		return false;
	}
	/**
	 * - (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar;
	 */
	public void searchBarTextDidEndEditing(UISearchBar searchBar){};
	/**
	 * - (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText;
	 */
	public void textDidChange(UISearchBar searchBar, String searchText){};
	/**
	 * - (BOOL)searchBar:(UISearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text ;
	 */
	public boolean shouldChangeTextInRange(UISearchBar searchBar, NSRange range, String text){
		return false;
	}
	/**
	 * - (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar;
	 */
	public void searchBarSearchButtonClicked(UISearchBar searchBar){};
	/**
	 * - (void)searchBarBookmarkButtonClicked:(UISearchBar *)searchBar;
	 */
	public void searchBarBookmarkButtonClicked(UISearchBar searchBar){};
	/**
	 * - (void)searchBarCancelButtonClicked:(UISearchBar *) searchBar;
	 */
	public void searchBarCancelButtonClicked(UISearchBar searchBar){};
	/**
	 * - (void)searchBarResultsListButtonClicked:(UISearchBar *)searchBar ;
	 */
	public void searchBarResultsListButtonClicked(UISearchBar searchBar){};
	/**
	 * - (void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope ;
	 */
	public void selectedScopeButtonIndexDidChange(UISearchBar searchBar, int selectedScope){};}
