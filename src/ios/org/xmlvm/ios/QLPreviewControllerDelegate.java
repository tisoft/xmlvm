package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface QLPreviewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)previewControllerWillDismiss:(QLPreviewController *)controller;
	 */
	public abstract void previewControllerWillDismiss(QLPreviewController controller);

	/**
	 * - (void)previewControllerDidDismiss:(QLPreviewController *)controller;
	 */
	public abstract void previewControllerDidDismiss(QLPreviewController controller);

	/**
	 * - (BOOL)previewController:(QLPreviewController *)controller shouldOpenURL:(NSURL *)url forPreviewItem:(id <QLPreviewItem>)item;
	 */
	public abstract boolean shouldOpenURL(QLPreviewController controller, NSURL url, QLPreviewItem item);

	/**
	 * - (CGRect)previewController:(QLPreviewController *)controller frameForPreviewItem:(id <QLPreviewItem>)item inSourceView:(UIView **)view ;
	 */
	public abstract CGRect frameForPreviewItem(QLPreviewController controller, QLPreviewItem item, Reference<UIView> view);

	/**
	 * - (UIImage *)previewController:(QLPreviewController *)controller transitionImageForPreviewItem:(id <QLPreviewItem>)item contentRect:(CGRect *)contentRect;
	 */
	public abstract UIImage transitionImageForPreviewItem(QLPreviewController controller, QLPreviewItem item, Reference<CGRect> contentRect);
}
