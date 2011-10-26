package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface QLPreviewControllerDataSource {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller;
	 */
	public abstract int numberOfPreviewItemsInPreviewController(QLPreviewController controller);

	/**
	 * - (id <QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index;
	 */
	public abstract QLPreviewItem previewController(QLPreviewController controller, int index);
}
