package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={NSArray.class})
@org.xmlvm.XMLVMDelegate(protocolType = "UITabBarControllerDelegate")
public interface UITabBarControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tabBarController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITabBarController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIViewController", name = "shouldSelectViewController")
	})
	public abstract boolean shouldSelectViewController(UITabBarController tabBarController, UIViewController viewController);

	/**
	 * - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tabBarController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITabBarController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIViewController", name = "didSelectViewController")
	})
	public abstract void didSelectViewController(UITabBarController tabBarController, UIViewController viewController);

	/**
	 * - (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tabBarController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITabBarController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "willBeginCustomizingViewControllers")
	})
	public abstract void willBeginCustomizingViewControllers(UITabBarController tabBarController, List viewControllers);

	/**
	 * - (void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tabBarController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITabBarController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "willEndCustomizingViewControllers"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "changed")
	})
	public abstract void willEndCustomizingViewControllers(UITabBarController tabBarController, List viewControllers, boolean changed);

	/**
	 * - (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "tabBarController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITabBarController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "didEndCustomizingViewControllers"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "changed")
	})
	public abstract void didEndCustomizingViewControllers(UITabBarController tabBarController, List viewControllers, boolean changed);
}
