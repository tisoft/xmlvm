package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class QLPreviewControllerDataSource implements org.xmlvm.ios.QLPreviewControllerDataSource {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller;
	 */
	public int numberOfPreviewItemsInPreviewController(QLPreviewController controller){
		return 0;
	}
	/**
	 * - (id <QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index;
	 */
	public org.xmlvm.ios.QLPreviewItem previewController(QLPreviewController controller, int index){
		return null;
	}}
