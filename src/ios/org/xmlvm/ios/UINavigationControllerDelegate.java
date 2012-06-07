package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UINavigationControllerDelegate")
public interface UINavigationControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "navigationController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UINavigationController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIViewController", name = "willShowViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "animated")
	})
	public abstract void willShowViewController(UINavigationController navigationController, UIViewController viewController, boolean animated);

	/**
	 * - (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "navigationController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UINavigationController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIViewController", name = "didShowViewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "animated")
	})
	public abstract void didShowViewController(UINavigationController navigationController, UIViewController viewController, boolean animated);
}
