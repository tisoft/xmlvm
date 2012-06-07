package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UINavigationBarDelegate implements org.xmlvm.ios.UINavigationBarDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPushItem:(UINavigationItem *)item;
	 */
	public boolean shouldPushItem(UINavigationBar navigationBar, UINavigationItem item){
		return false;
	}
	/**
	 * - (void)navigationBar:(UINavigationBar *)navigationBar didPushItem:(UINavigationItem *)item;
	 */
	public void didPushItem(UINavigationBar navigationBar, UINavigationItem item){};
	/**
	 * - (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item;
	 */
	public boolean shouldPopItem(UINavigationBar navigationBar, UINavigationItem item){
		return false;
	}
	/**
	 * - (void)navigationBar:(UINavigationBar *)navigationBar didPopItem:(UINavigationItem *)item;
	 */
	public void didPopItem(UINavigationBar navigationBar, UINavigationItem item){};}
