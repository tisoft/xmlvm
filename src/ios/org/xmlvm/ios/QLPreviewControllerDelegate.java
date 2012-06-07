package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "QLPreviewControllerDelegate")
public interface QLPreviewControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)previewControllerWillDismiss:(QLPreviewController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "previewControllerWillDismiss", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "QLPreviewController")
	})
	public abstract void previewControllerWillDismiss(QLPreviewController controller);

	/**
	 * - (void)previewControllerDidDismiss:(QLPreviewController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "previewControllerDidDismiss", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "QLPreviewController")
	})
	public abstract void previewControllerDidDismiss(QLPreviewController controller);

	/**
	 * - (BOOL)previewController:(QLPreviewController *)controller shouldOpenURL:(NSURL *)url forPreviewItem:(id <QLPreviewItem>)item;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "previewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "QLPreviewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURL", name = "shouldOpenURL"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "forPreviewItem")
	})
	public abstract boolean shouldOpenURL(QLPreviewController controller, NSURL url, org.xmlvm.ios.QLPreviewItem item);

	/**
	 * - (CGRect)previewController:(QLPreviewController *)controller frameForPreviewItem:(id <QLPreviewItem>)item inSourceView:(UIView **)view ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "previewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "QLPreviewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "frameForPreviewItem")
	})
	public abstract CGRect frameForPreviewItem(QLPreviewController controller, org.xmlvm.ios.QLPreviewItem item, Reference<UIView> view);

	/**
	 * - (UIImage *)previewController:(QLPreviewController *)controller transitionImageForPreviewItem:(id <QLPreviewItem>)item contentRect:(CGRect *)contentRect;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "previewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "QLPreviewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true, name = "transitionImageForPreviewItem"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CGRect", name = "contentRect")
	})
	public abstract UIImage transitionImageForPreviewItem(QLPreviewController controller, org.xmlvm.ios.QLPreviewItem item, Reference<CGRect> contentRect);
}
