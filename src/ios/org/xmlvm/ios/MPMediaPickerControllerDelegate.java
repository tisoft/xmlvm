package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface MPMediaPickerControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)mediaPicker:(MPMediaPickerController *)mediaPicker didPickMediaItems:(MPMediaItemCollection *)mediaItemCollection;
	 */
	public abstract void mediaPicker(MPMediaPickerController mediaPicker, MPMediaItemCollection mediaItemCollection);

	/**
	 * - (void)mediaPickerDidCancel:(MPMediaPickerController *)mediaPicker;
	 */
	public abstract void mediaPickerDidCancel(MPMediaPickerController mediaPicker);
}
