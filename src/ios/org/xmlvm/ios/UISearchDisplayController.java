package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UISearchDisplayController extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithSearchBar:(UISearchBar *)searchBar contentsController:(UIViewController *)viewController;
	 */
	public UISearchDisplayController(UISearchBar searchBar, UIViewController viewController) {}

	/** Default constructor */
	UISearchDisplayController() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<UISearchDisplayDelegate> delegate;
	 */
	public UISearchDisplayDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UISearchDisplayDelegate> delegate;
	 */
	public void setDelegate(UISearchDisplayDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isActive) BOOL active;
	 */
	public boolean isActive(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isActive) BOOL active;
	 */
	public void setActive(boolean active){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UISearchBar *searchBar;
	 */
	public UISearchBar getSearchBar(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIViewController *searchContentsController;
	 */
	public UIViewController getSearchContentsController(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UITableView *searchResultsTableView;
	 */
	public UITableView getSearchResultsTableView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UITableViewDataSource> searchResultsDataSource;
	 */
	public UITableViewDataSource getSearchResultsDataSource(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UITableViewDataSource> searchResultsDataSource;
	 */
	public void setSearchResultsDataSource(UITableViewDataSource searchResultsDataSource){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UITableViewDelegate> searchResultsDelegate;
	 */
	public UITableViewDelegate getSearchResultsDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UITableViewDelegate> searchResultsDelegate;
	 */
	public void setSearchResultsDelegate(UITableViewDelegate searchResultsDelegate){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setActive:(BOOL)visible animated:(BOOL)animated;
	 */
	public void setActive(boolean visible, boolean animated){
		throw new RuntimeException("Stub");
	}
}
