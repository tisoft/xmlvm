package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UITabBarController extends UIViewController {

	/*
	 * Constructors
	 */
	public UITabBarController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/** Default constructor */
	public UITabBarController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,copy) NSArray *viewControllers;
	 */
	public List<UIViewController> getViewControllers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *viewControllers;
	 */
	public void setViewControllers(List<UIViewController> arg0){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) UIViewController *selectedViewController;
	 */
	public UIViewController getSelectedViewController(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) UIViewController *selectedViewController;
	 */
	public void setSelectedViewController(UIViewController selectedViewController){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSUInteger selectedIndex;
	 */
	public int getSelectedIndex(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSUInteger selectedIndex;
	 */
	public void setSelectedIndex(int selectedIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UINavigationController *moreNavigationController;
	 */
	public UINavigationController getMoreNavigationController(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *customizableViewControllers;
	 */
	public List getCustomizableViewControllers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *customizableViewControllers;
	 */
	public void setCustomizableViewControllers(List customizableViewControllers){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UITabBar *tabBar ;
	 */
	public UITabBar getTabBar(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UITabBarControllerDelegate> delegate;
	 */
	public UITabBarControllerDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UITabBarControllerDelegate> delegate;
	 */
	public void setDelegate(UITabBarControllerDelegate arg0){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setViewControllers:(NSArray *)viewControllers animated:(BOOL)animated;
	 */
	public void setViewControllers(List viewControllers, boolean animated){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
