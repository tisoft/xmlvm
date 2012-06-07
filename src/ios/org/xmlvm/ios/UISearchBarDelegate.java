package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UISearchBarDelegate")
public interface UISearchBarDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchBarShouldBeginEditing", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchBar")
	})
	public abstract boolean searchBarShouldBeginEditing(UISearchBar searchBar);

	/**
	 * - (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchBarTextDidBeginEditing", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchBar")
	})
	public abstract void searchBarTextDidBeginEditing(UISearchBar searchBar);

	/**
	 * - (BOOL)searchBarShouldEndEditing:(UISearchBar *)searchBar;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchBarShouldEndEditing", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchBar")
	})
	public abstract boolean searchBarShouldEndEditing(UISearchBar searchBar);

	/**
	 * - (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchBarTextDidEndEditing", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchBar")
	})
	public abstract void searchBarTextDidEndEditing(UISearchBar searchBar);

	/**
	 * - (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchBar", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchBar"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "textDidChange")
	})
	public abstract void textDidChange(UISearchBar searchBar, String searchText);

	/**
	 * - (BOOL)searchBar:(UISearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchBar", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchBar"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSRange", isStruct = true, name = "shouldChangeTextInRange"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "replacementText")
	})
	public abstract boolean shouldChangeTextInRange(UISearchBar searchBar, NSRange range, String text);

	/**
	 * - (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchBarSearchButtonClicked", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchBar")
	})
	public abstract void searchBarSearchButtonClicked(UISearchBar searchBar);

	/**
	 * - (void)searchBarBookmarkButtonClicked:(UISearchBar *)searchBar;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchBarBookmarkButtonClicked", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchBar")
	})
	public abstract void searchBarBookmarkButtonClicked(UISearchBar searchBar);

	/**
	 * - (void)searchBarCancelButtonClicked:(UISearchBar *) searchBar;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchBarCancelButtonClicked", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchBar")
	})
	public abstract void searchBarCancelButtonClicked(UISearchBar searchBar);

	/**
	 * - (void)searchBarResultsListButtonClicked:(UISearchBar *)searchBar ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchBarResultsListButtonClicked", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchBar")
	})
	public abstract void searchBarResultsListButtonClicked(UISearchBar searchBar);

	/**
	 * - (void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "searchBar", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UISearchBar"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "selectedScopeButtonIndexDidChange")
	})
	public abstract void selectedScopeButtonIndexDidChange(UISearchBar searchBar, int selectedScope);
}
