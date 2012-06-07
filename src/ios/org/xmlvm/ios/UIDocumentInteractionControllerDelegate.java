package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIDocumentInteractionControllerDelegate")
public interface UIDocumentInteractionControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "documentInteractionControllerViewControllerForPreview", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIDocumentInteractionController")
	})
	public abstract UIViewController documentInteractionControllerViewControllerForPreview(UIDocumentInteractionController controller);

	/**
	 * - (CGRect)documentInteractionControllerRectForPreview:(UIDocumentInteractionController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "documentInteractionControllerRectForPreview", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIDocumentInteractionController")
	})
	public abstract CGRect documentInteractionControllerRectForPreview(UIDocumentInteractionController controller);

	/**
	 * - (UIView *)documentInteractionControllerViewForPreview:(UIDocumentInteractionController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "documentInteractionControllerViewForPreview", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIDocumentInteractionController")
	})
	public abstract UIView documentInteractionControllerViewForPreview(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionControllerWillBeginPreview:(UIDocumentInteractionController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "documentInteractionControllerWillBeginPreview", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIDocumentInteractionController")
	})
	public abstract void documentInteractionControllerWillBeginPreview(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionControllerDidEndPreview:(UIDocumentInteractionController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "documentInteractionControllerDidEndPreview", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIDocumentInteractionController")
	})
	public abstract void documentInteractionControllerDidEndPreview(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionControllerWillPresentOptionsMenu:(UIDocumentInteractionController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "documentInteractionControllerWillPresentOptionsMenu", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIDocumentInteractionController")
	})
	public abstract void documentInteractionControllerWillPresentOptionsMenu(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionControllerDidDismissOptionsMenu:(UIDocumentInteractionController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "documentInteractionControllerDidDismissOptionsMenu", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIDocumentInteractionController")
	})
	public abstract void documentInteractionControllerDidDismissOptionsMenu(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionControllerWillPresentOpenInMenu:(UIDocumentInteractionController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "documentInteractionControllerWillPresentOpenInMenu", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIDocumentInteractionController")
	})
	public abstract void documentInteractionControllerWillPresentOpenInMenu(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionControllerDidDismissOpenInMenu:(UIDocumentInteractionController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "documentInteractionControllerDidDismissOpenInMenu", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIDocumentInteractionController")
	})
	public abstract void documentInteractionControllerDidDismissOpenInMenu(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionController:(UIDocumentInteractionController *)controller willBeginSendingToApplication:(NSString *)application;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "documentInteractionController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIDocumentInteractionController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "willBeginSendingToApplication")
	})
	public abstract void willBeginSendingToApplication(UIDocumentInteractionController controller, String application);

	/**
	 * - (void)documentInteractionController:(UIDocumentInteractionController *)controller didEndSendingToApplication:(NSString *)application;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "documentInteractionController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIDocumentInteractionController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didEndSendingToApplication")
	})
	public abstract void didEndSendingToApplication(UIDocumentInteractionController controller, String application);

	/**
	 * - (BOOL)documentInteractionController:(UIDocumentInteractionController *)controller canPerformAction:(SEL)action;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "documentInteractionController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIDocumentInteractionController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "SEL", isStruct = true, name = "canPerformAction")
	})
	public abstract boolean canPerformAction(UIDocumentInteractionController controller, SEL action);

	/**
	 * - (BOOL)documentInteractionController:(UIDocumentInteractionController *)controller performAction:(SEL)action;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "documentInteractionController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIDocumentInteractionController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "SEL", isStruct = true, name = "performAction")
	})
	public abstract boolean performAction(UIDocumentInteractionController controller, SEL action);
}
