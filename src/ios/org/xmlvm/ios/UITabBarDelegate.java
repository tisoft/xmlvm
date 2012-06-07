package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={NSArray.class})
@org.xmlvm.XMLVMDelegate(protocolType = "UITabBarDelegate")
public interface UITabBarDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tabBar", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITabBar"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITabBarItem", name = "didSelectItem")
	})
	public abstract void didSelectItem(UITabBar tabBar, UITabBarItem item);

	/**
	 * - (void)tabBar:(UITabBar *)tabBar willBeginCustomizingItems:(NSArray *)items;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tabBar", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITabBar"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "willBeginCustomizingItems")
	})
	public abstract void willBeginCustomizingItems(UITabBar tabBar, List items);

	/**
	 * - (void)tabBar:(UITabBar *)tabBar didBeginCustomizingItems:(NSArray *)items;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tabBar", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITabBar"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "didBeginCustomizingItems")
	})
	public abstract void didBeginCustomizingItems(UITabBar tabBar, List items);

	/**
	 * - (void)tabBar:(UITabBar *)tabBar willEndCustomizingItems:(NSArray *)items changed:(BOOL)changed;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tabBar", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITabBar"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "willEndCustomizingItems"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "changed")
	})
	public abstract void willEndCustomizingItems(UITabBar tabBar, List items, boolean changed);

	/**
	 * - (void)tabBar:(UITabBar *)tabBar didEndCustomizingItems:(NSArray *)items changed:(BOOL)changed;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tabBar", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITabBar"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "didEndCustomizingItems"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "changed")
	})
	public abstract void didEndCustomizingItems(UITabBar tabBar, List items, boolean changed);
}
