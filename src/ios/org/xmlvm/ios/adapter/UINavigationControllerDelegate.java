package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UINavigationControllerDelegate implements org.xmlvm.ios.UINavigationControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated;
	 */
	public void willShowViewController(UINavigationController navigationController, UIViewController viewController, boolean animated){};
	/**
	 * - (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated;
	 */
	public void didShowViewController(UINavigationController navigationController, UIViewController viewController, boolean animated){};}
