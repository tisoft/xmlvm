package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIAlertViewDelegate")
public interface UIAlertViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "alertView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIAlertView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "clickedButtonAtIndex")
	})
	public abstract void clickedButtonAtIndex(UIAlertView alertView, int buttonIndex);

	/**
	 * - (void)alertViewCancel:(UIAlertView *)alertView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "alertViewCancel", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIAlertView")
	})
	public abstract void alertViewCancel(UIAlertView alertView);

	/**
	 * - (void)willPresentAlertView:(UIAlertView *)alertView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "willPresentAlertView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIAlertView")
	})
	public abstract void willPresentAlertView(UIAlertView alertView);

	/**
	 * - (void)didPresentAlertView:(UIAlertView *)alertView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "didPresentAlertView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIAlertView")
	})
	public abstract void didPresentAlertView(UIAlertView alertView);

	/**
	 * - (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "alertView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIAlertView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "willDismissWithButtonIndex")
	})
	public abstract void willDismissWithButtonIndex(UIAlertView alertView, int buttonIndex);

	/**
	 * - (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "alertView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIAlertView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "didDismissWithButtonIndex")
	})
	public abstract void didDismissWithButtonIndex(UIAlertView alertView, int buttonIndex);
}
