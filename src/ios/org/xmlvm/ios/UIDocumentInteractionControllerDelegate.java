package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIDocumentInteractionControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller;
	 */
	public abstract UIViewController documentInteractionControllerViewControllerForPreview(UIDocumentInteractionController controller);

	/**
	 * - (CGRect)documentInteractionControllerRectForPreview:(UIDocumentInteractionController *)controller;
	 */
	public abstract CGRect documentInteractionControllerRectForPreview(UIDocumentInteractionController controller);

	/**
	 * - (UIView *)documentInteractionControllerViewForPreview:(UIDocumentInteractionController *)controller;
	 */
	public abstract UIView documentInteractionControllerViewForPreview(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionControllerWillBeginPreview:(UIDocumentInteractionController *)controller;
	 */
	public abstract void documentInteractionControllerWillBeginPreview(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionControllerDidEndPreview:(UIDocumentInteractionController *)controller;
	 */
	public abstract void documentInteractionControllerDidEndPreview(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionControllerWillPresentOptionsMenu:(UIDocumentInteractionController *)controller;
	 */
	public abstract void documentInteractionControllerWillPresentOptionsMenu(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionControllerDidDismissOptionsMenu:(UIDocumentInteractionController *)controller;
	 */
	public abstract void documentInteractionControllerDidDismissOptionsMenu(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionControllerWillPresentOpenInMenu:(UIDocumentInteractionController *)controller;
	 */
	public abstract void documentInteractionControllerWillPresentOpenInMenu(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionControllerDidDismissOpenInMenu:(UIDocumentInteractionController *)controller;
	 */
	public abstract void documentInteractionControllerDidDismissOpenInMenu(UIDocumentInteractionController controller);

	/**
	 * - (void)documentInteractionController:(UIDocumentInteractionController *)controller willBeginSendingToApplication:(NSString *)application;
	 */
	public abstract void willBeginSendingToApplication(UIDocumentInteractionController controller, String application);

	/**
	 * - (void)documentInteractionController:(UIDocumentInteractionController *)controller didEndSendingToApplication:(NSString *)application;
	 */
	public abstract void didEndSendingToApplication(UIDocumentInteractionController controller, String application);

	/**
	 * - (BOOL)documentInteractionController:(UIDocumentInteractionController *)controller canPerformAction:(SEL)action;
	 */
	public abstract boolean canPerformAction(UIDocumentInteractionController controller, SEL action);

	/**
	 * - (BOOL)documentInteractionController:(UIDocumentInteractionController *)controller performAction:(SEL)action;
	 */
	public abstract boolean performAction(UIDocumentInteractionController controller, SEL action);
}
