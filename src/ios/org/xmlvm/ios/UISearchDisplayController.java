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
	public UISearchDisplayController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<UISearchDisplayDelegate> delegate;
	 */
	public org.xmlvm.ios.UISearchDisplayDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UISearchDisplayDelegate> delegate;
	 */
	public void setDelegate(org.xmlvm.ios.UISearchDisplayDelegate delegate){
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
	public org.xmlvm.ios.UITableViewDataSource getSearchResultsDataSource(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UITableViewDataSource> searchResultsDataSource;
	 */
	public void setSearchResultsDataSource(org.xmlvm.ios.UITableViewDataSource searchResultsDataSource){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UITableViewDelegate> searchResultsDelegate;
	 */
	public org.xmlvm.ios.UITableViewDelegate getSearchResultsDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UITableViewDelegate> searchResultsDelegate;
	 */
	public void setSearchResultsDelegate(org.xmlvm.ios.UITableViewDelegate searchResultsDelegate){
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
