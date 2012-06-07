package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UITabBarControllerDelegate implements org.xmlvm.ios.UITabBarControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController ;
	 */
	public boolean shouldSelectViewController(UITabBarController tabBarController, UIViewController viewController){
		return false;
	}
	/**
	 * - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController;
	 */
	public void didSelectViewController(UITabBarController tabBarController, UIViewController viewController){};
	/**
	 * - (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers ;
	 */
	public void willBeginCustomizingViewControllers(UITabBarController tabBarController, List viewControllers){};
	/**
	 * - (void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed ;
	 */
	public void willEndCustomizingViewControllers(UITabBarController tabBarController, List viewControllers, boolean changed){};
	/**
	 * - (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed;
	 */
	public void didEndCustomizingViewControllers(UITabBarController tabBarController, List viewControllers, boolean changed){};}
