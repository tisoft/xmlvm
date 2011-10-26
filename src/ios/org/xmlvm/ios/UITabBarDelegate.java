package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UITabBarDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item;
	 */
	public abstract void didSelectItem(UITabBar tabBar, UITabBarItem item);

	/**
	 * - (void)tabBar:(UITabBar *)tabBar willBeginCustomizingItems:(NSArray *)items;
	 */
	public abstract void willBeginCustomizingItems(UITabBar tabBar, List items);

	/**
	 * - (void)tabBar:(UITabBar *)tabBar didBeginCustomizingItems:(NSArray *)items;
	 */
	public abstract void didBeginCustomizingItems(UITabBar tabBar, List items);

	/**
	 * - (void)tabBar:(UITabBar *)tabBar willEndCustomizingItems:(NSArray *)items changed:(BOOL)changed;
	 */
	public abstract void willEndCustomizingItems(UITabBar tabBar, List items, boolean changed);

	/**
	 * - (void)tabBar:(UITabBar *)tabBar didEndCustomizingItems:(NSArray *)items changed:(BOOL)changed;
	 */
	public abstract void didEndCustomizingItems(UITabBar tabBar, List items, boolean changed);
}
