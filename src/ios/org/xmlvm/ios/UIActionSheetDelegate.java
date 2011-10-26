package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIActionSheetDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;
	 */
	public abstract void clickedButtonAtIndex(UIActionSheet actionSheet, int buttonIndex);

	/**
	 * - (void)actionSheetCancel:(UIActionSheet *)actionSheet;
	 */
	public abstract void actionSheetCancel(UIActionSheet actionSheet);

	/**
	 * - (void)willPresentActionSheet:(UIActionSheet *)actionSheet;
	 */
	public abstract void willPresentActionSheet(UIActionSheet actionSheet);

	/**
	 * - (void)didPresentActionSheet:(UIActionSheet *)actionSheet;
	 */
	public abstract void didPresentActionSheet(UIActionSheet actionSheet);

	/**
	 * - (void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex;
	 */
	public abstract void willDismissWithButtonIndex(UIActionSheet actionSheet, int buttonIndex);

	/**
	 * - (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex;
	 */
	public abstract void didDismissWithButtonIndex(UIActionSheet actionSheet, int buttonIndex);
}
