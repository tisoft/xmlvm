package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UINavigationController extends UIViewController {

	/*
	 * Constructors
	 */
	public UINavigationController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/**
	 * - (id)initWithRootViewController:(UIViewController *)rootViewController;
	 */
	public UINavigationController(UIViewController rootViewController) {}

	/** Default constructor */
	public UINavigationController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly,retain) UIViewController *topViewController;
	 */
	public UIViewController getTopViewController(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UIViewController *visibleViewController;
	 */
	public UIViewController getVisibleViewController(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *viewControllers;
	 */
	public List getViewControllers(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *viewControllers;
	 */
	public void setViewControllers(List viewControllers){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isNavigationBarHidden) BOOL navigationBarHidden;
	 */
	public boolean isNavigationBarHidden(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isNavigationBarHidden) BOOL navigationBarHidden;
	 */
	public void setNavigationBarHidden(boolean navigationBarHidden){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UINavigationBar *navigationBar;
	 */
	public UINavigationBar getNavigationBar(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isToolbarHidden) BOOL toolbarHidden ;
	 */
	public boolean isToolbarHidden(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isToolbarHidden) BOOL toolbarHidden ;
	 */
	public void setToolbarHidden(boolean toolbarHidden){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIToolbar *toolbar ;
	 */
	public UIToolbar getToolbar(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<UINavigationControllerDelegate> delegate;
	 */
	public UINavigationControllerDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<UINavigationControllerDelegate> delegate;
	 */
	public void setDelegate(UINavigationControllerDelegate arg0){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated;
	 */
	public void pushViewController(UIViewController viewController, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIViewController *)popViewControllerAnimated:(BOOL)animated;
	 */
	public UIViewController popViewControllerAnimated(boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated;
	 */
	public List popToViewController(UIViewController viewController, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)popToRootViewControllerAnimated:(BOOL)animated;
	 */
	public List popToRootViewControllerAnimated(boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setViewControllers:(NSArray *)viewControllers animated:(BOOL)animated ;
	 */
	public void setViewControllers(List viewControllers, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated;
	 */
	public void setNavigationBarHidden(boolean hidden, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated ;
	 */
	public void setToolbarHidden(boolean hidden, boolean animated){
		throw new RuntimeException("Stub");
	}
}
