package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UITabBarControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController ;
	 */
	public abstract boolean shouldSelectViewController(UITabBarController tabBarController, UIViewController viewController);

	/**
	 * - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController;
	 */
	public abstract void didSelectViewController(UITabBarController tabBarController, UIViewController viewController);

	/**
	 * - (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers ;
	 */
	public abstract void willBeginCustomizingViewControllers(UITabBarController tabBarController, List viewControllers);

	/**
	 * - (void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed ;
	 */
	public abstract void willEndCustomizingViewControllers(UITabBarController tabBarController, List viewControllers, boolean changed);

	/**
	 * - (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed;
	 */
	public abstract void didEndCustomizingViewControllers(UITabBarController tabBarController, List viewControllers, boolean changed);
}
