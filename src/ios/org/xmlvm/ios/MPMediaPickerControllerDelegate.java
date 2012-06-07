package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "MPMediaPickerControllerDelegate")
public interface MPMediaPickerControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)mediaPicker:(MPMediaPickerController *)mediaPicker didPickMediaItems:(MPMediaItemCollection *)mediaItemCollection;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mediaPicker", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MPMediaPickerController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MPMediaItemCollection", name = "didPickMediaItems")
	})
	public abstract void mediaPicker(MPMediaPickerController mediaPicker, MPMediaItemCollection mediaItemCollection);

	/**
	 * - (void)mediaPickerDidCancel:(MPMediaPickerController *)mediaPicker;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "mediaPickerDidCancel", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "MPMediaPickerController")
	})
	public abstract void mediaPickerDidCancel(MPMediaPickerController mediaPicker);
}
