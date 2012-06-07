package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIDocumentInteractionControllerDelegate implements org.xmlvm.ios.UIDocumentInteractionControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller;
	 */
	public UIViewController documentInteractionControllerViewControllerForPreview(UIDocumentInteractionController controller){
		return null;
	}
	/**
	 * - (CGRect)documentInteractionControllerRectForPreview:(UIDocumentInteractionController *)controller;
	 */
	public CGRect documentInteractionControllerRectForPreview(UIDocumentInteractionController controller){
		return null;
	}
	/**
	 * - (UIView *)documentInteractionControllerViewForPreview:(UIDocumentInteractionController *)controller;
	 */
	public UIView documentInteractionControllerViewForPreview(UIDocumentInteractionController controller){
		return null;
	}
	/**
	 * - (void)documentInteractionControllerWillBeginPreview:(UIDocumentInteractionController *)controller;
	 */
	public void documentInteractionControllerWillBeginPreview(UIDocumentInteractionController controller){};
	/**
	 * - (void)documentInteractionControllerDidEndPreview:(UIDocumentInteractionController *)controller;
	 */
	public void documentInteractionControllerDidEndPreview(UIDocumentInteractionController controller){};
	/**
	 * - (void)documentInteractionControllerWillPresentOptionsMenu:(UIDocumentInteractionController *)controller;
	 */
	public void documentInteractionControllerWillPresentOptionsMenu(UIDocumentInteractionController controller){};
	/**
	 * - (void)documentInteractionControllerDidDismissOptionsMenu:(UIDocumentInteractionController *)controller;
	 */
	public void documentInteractionControllerDidDismissOptionsMenu(UIDocumentInteractionController controller){};
	/**
	 * - (void)documentInteractionControllerWillPresentOpenInMenu:(UIDocumentInteractionController *)controller;
	 */
	public void documentInteractionControllerWillPresentOpenInMenu(UIDocumentInteractionController controller){};
	/**
	 * - (void)documentInteractionControllerDidDismissOpenInMenu:(UIDocumentInteractionController *)controller;
	 */
	public void documentInteractionControllerDidDismissOpenInMenu(UIDocumentInteractionController controller){};
	/**
	 * - (void)documentInteractionController:(UIDocumentInteractionController *)controller willBeginSendingToApplication:(NSString *)application;
	 */
	public void willBeginSendingToApplication(UIDocumentInteractionController controller, String application){};
	/**
	 * - (void)documentInteractionController:(UIDocumentInteractionController *)controller didEndSendingToApplication:(NSString *)application;
	 */
	public void didEndSendingToApplication(UIDocumentInteractionController controller, String application){};
	/**
	 * - (BOOL)documentInteractionController:(UIDocumentInteractionController *)controller canPerformAction:(SEL)action;
	 */
	public boolean canPerformAction(UIDocumentInteractionController controller, SEL action){
		return false;
	}
	/**
	 * - (BOOL)documentInteractionController:(UIDocumentInteractionController *)controller performAction:(SEL)action;
	 */
	public boolean performAction(UIDocumentInteractionController controller, SEL action){
		return false;
	}}
