package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIImagePickerControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo ;
	 */
	public abstract void didFinishPickingImage(UIImagePickerController picker, UIImage image, Map editingInfo);

	/**
	 * - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info;
	 */
	public abstract void didFinishPickingMediaWithInfo(UIImagePickerController picker, Map info);

	/**
	 * - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker;
	 */
	public abstract void imagePickerControllerDidCancel(UIImagePickerController picker);
}
