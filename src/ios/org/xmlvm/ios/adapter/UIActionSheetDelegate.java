package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIActionSheetDelegate implements org.xmlvm.ios.UIActionSheetDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;
	 */
	public void clickedButtonAtIndex(UIActionSheet actionSheet, int buttonIndex){};
	/**
	 * - (void)actionSheetCancel:(UIActionSheet *)actionSheet;
	 */
	public void actionSheetCancel(UIActionSheet actionSheet){};
	/**
	 * - (void)willPresentActionSheet:(UIActionSheet *)actionSheet;
	 */
	public void willPresentActionSheet(UIActionSheet actionSheet){};
	/**
	 * - (void)didPresentActionSheet:(UIActionSheet *)actionSheet;
	 */
	public void didPresentActionSheet(UIActionSheet actionSheet){};
	/**
	 * - (void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex;
	 */
	public void willDismissWithButtonIndex(UIActionSheet actionSheet, int buttonIndex){};
	/**
	 * - (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex;
	 */
	public void didDismissWithButtonIndex(UIActionSheet actionSheet, int buttonIndex){};}
