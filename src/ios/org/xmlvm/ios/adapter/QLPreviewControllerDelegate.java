package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class QLPreviewControllerDelegate implements org.xmlvm.ios.QLPreviewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)previewControllerWillDismiss:(QLPreviewController *)controller;
	 */
	public void previewControllerWillDismiss(QLPreviewController controller){};
	/**
	 * - (void)previewControllerDidDismiss:(QLPreviewController *)controller;
	 */
	public void previewControllerDidDismiss(QLPreviewController controller){};
	/**
	 * - (BOOL)previewController:(QLPreviewController *)controller shouldOpenURL:(NSURL *)url forPreviewItem:(id <QLPreviewItem>)item;
	 */
	public boolean shouldOpenURL(QLPreviewController controller, NSURL url, org.xmlvm.ios.QLPreviewItem item){
		return false;
	}
	/**
	 * - (CGRect)previewController:(QLPreviewController *)controller frameForPreviewItem:(id <QLPreviewItem>)item inSourceView:(UIView **)view ;
	 */
	public CGRect frameForPreviewItem(QLPreviewController controller, org.xmlvm.ios.QLPreviewItem item, Reference<UIView> view){
		return null;
	}
	/**
	 * - (UIImage *)previewController:(QLPreviewController *)controller transitionImageForPreviewItem:(id <QLPreviewItem>)item contentRect:(CGRect *)contentRect;
	 */
	public UIImage transitionImageForPreviewItem(QLPreviewController controller, org.xmlvm.ios.QLPreviewItem item, Reference<CGRect> contentRect){
		return null;
	}}
