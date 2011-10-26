package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UINavigationControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated;
	 */
	public abstract void willShowViewController(UINavigationController navigationController, UIViewController viewController, boolean animated);

	/**
	 * - (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated;
	 */
	public abstract void didShowViewController(UINavigationController navigationController, UIViewController viewController, boolean animated);
}
