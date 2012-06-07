package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UINavigationBarDelegate")
public interface UINavigationBarDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPushItem:(UINavigationItem *)item;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "navigationBar", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UINavigationBar"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UINavigationItem", name = "shouldPushItem")
	})
	public abstract boolean shouldPushItem(UINavigationBar navigationBar, UINavigationItem item);

	/**
	 * - (void)navigationBar:(UINavigationBar *)navigationBar didPushItem:(UINavigationItem *)item;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "navigationBar", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UINavigationBar"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UINavigationItem", name = "didPushItem")
	})
	public abstract void didPushItem(UINavigationBar navigationBar, UINavigationItem item);

	/**
	 * - (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "navigationBar", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UINavigationBar"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UINavigationItem", name = "shouldPopItem")
	})
	public abstract boolean shouldPopItem(UINavigationBar navigationBar, UINavigationItem item);

	/**
	 * - (void)navigationBar:(UINavigationBar *)navigationBar didPopItem:(UINavigationItem *)item;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "navigationBar", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UINavigationBar"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UINavigationItem", name = "didPopItem")
	})
	public abstract void didPopItem(UINavigationBar navigationBar, UINavigationItem item);
}
