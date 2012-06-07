package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UITabBarDelegate implements org.xmlvm.ios.UITabBarDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item;
	 */
	public void didSelectItem(UITabBar tabBar, UITabBarItem item){};
	/**
	 * - (void)tabBar:(UITabBar *)tabBar willBeginCustomizingItems:(NSArray *)items;
	 */
	public void willBeginCustomizingItems(UITabBar tabBar, List items){};
	/**
	 * - (void)tabBar:(UITabBar *)tabBar didBeginCustomizingItems:(NSArray *)items;
	 */
	public void didBeginCustomizingItems(UITabBar tabBar, List items){};
	/**
	 * - (void)tabBar:(UITabBar *)tabBar willEndCustomizingItems:(NSArray *)items changed:(BOOL)changed;
	 */
	public void willEndCustomizingItems(UITabBar tabBar, List items, boolean changed){};
	/**
	 * - (void)tabBar:(UITabBar *)tabBar didEndCustomizingItems:(NSArray *)items changed:(BOOL)changed;
	 */
	public void didEndCustomizingItems(UITabBar tabBar, List items, boolean changed){};}
