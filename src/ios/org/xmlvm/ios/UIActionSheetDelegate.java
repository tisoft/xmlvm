package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIActionSheetDelegate")
public interface UIActionSheetDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "actionSheet", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIActionSheet"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "clickedButtonAtIndex")
	})
	public abstract void clickedButtonAtIndex(UIActionSheet actionSheet, int buttonIndex);

	/**
	 * - (void)actionSheetCancel:(UIActionSheet *)actionSheet;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "actionSheetCancel", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIActionSheet")
	})
	public abstract void actionSheetCancel(UIActionSheet actionSheet);

	/**
	 * - (void)willPresentActionSheet:(UIActionSheet *)actionSheet;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "willPresentActionSheet", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIActionSheet")
	})
	public abstract void willPresentActionSheet(UIActionSheet actionSheet);

	/**
	 * - (void)didPresentActionSheet:(UIActionSheet *)actionSheet;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "didPresentActionSheet", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIActionSheet")
	})
	public abstract void didPresentActionSheet(UIActionSheet actionSheet);

	/**
	 * - (void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "actionSheet", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIActionSheet"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "willDismissWithButtonIndex")
	})
	public abstract void willDismissWithButtonIndex(UIActionSheet actionSheet, int buttonIndex);

	/**
	 * - (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "actionSheet", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIActionSheet"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "didDismissWithButtonIndex")
	})
	public abstract void didDismissWithButtonIndex(UIActionSheet actionSheet, int buttonIndex);
}
