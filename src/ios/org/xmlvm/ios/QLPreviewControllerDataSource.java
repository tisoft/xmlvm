package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "QLPreviewControllerDataSource")
public interface QLPreviewControllerDataSource {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "numberOfPreviewItemsInPreviewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "QLPreviewController")
	})
	public abstract int numberOfPreviewItemsInPreviewController(QLPreviewController controller);

	/**
	 * - (id <QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "previewController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "QLPreviewController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "previewItemAtIndex")
	})
	public abstract org.xmlvm.ios.QLPreviewItem previewController(QLPreviewController controller, int index);
}
