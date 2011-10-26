package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UINavigationBarDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPushItem:(UINavigationItem *)item;
	 */
	public abstract boolean shouldPushItem(UINavigationBar navigationBar, UINavigationItem item);

	/**
	 * - (void)navigationBar:(UINavigationBar *)navigationBar didPushItem:(UINavigationItem *)item;
	 */
	public abstract void didPushItem(UINavigationBar navigationBar, UINavigationItem item);

	/**
	 * - (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item;
	 */
	public abstract boolean shouldPopItem(UINavigationBar navigationBar, UINavigationItem item);

	/**
	 * - (void)navigationBar:(UINavigationBar *)navigationBar didPopItem:(UINavigationItem *)item;
	 */
	public abstract void didPopItem(UINavigationBar navigationBar, UINavigationItem item);
}
