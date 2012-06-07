package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIImagePickerControllerDelegate")
public interface UIImagePickerControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "imagePickerController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIImagePickerController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIImage", name = "didFinishPickingImage"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSDictionary", name = "editingInfo")
	})
	public abstract void didFinishPickingImage(UIImagePickerController picker, UIImage image, Map editingInfo);

	/**
	 * - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "imagePickerController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIImagePickerController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSDictionary", name = "didFinishPickingMediaWithInfo")
	})
	public abstract void didFinishPickingMediaWithInfo(UIImagePickerController picker, Map info);

	/**
	 * - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "imagePickerControllerDidCancel", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIImagePickerController")
	})
	public abstract void imagePickerControllerDidCancel(UIImagePickerController picker);
}
