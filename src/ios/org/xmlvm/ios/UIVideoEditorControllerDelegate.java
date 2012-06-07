package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIVideoEditorControllerDelegate")
public interface UIVideoEditorControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)videoEditorController:(UIVideoEditorController *)editor didSaveEditedVideoToPath:(NSString *)editedVideoPath;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "videoEditorController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIVideoEditorController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "didSaveEditedVideoToPath")
	})
	public abstract void didSaveEditedVideoToPath(UIVideoEditorController editor, String editedVideoPath);

	/**
	 * - (void)videoEditorController:(UIVideoEditorController *)editor didFailWithError:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "videoEditorController", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIVideoEditorController"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "didFailWithError")
	})
	public abstract void didFailWithError(UIVideoEditorController editor, NSError error);

	/**
	 * - (void)videoEditorControllerDidCancel:(UIVideoEditorController *)editor;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "videoEditorControllerDidCancel", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIVideoEditorController")
	})
	public abstract void videoEditorControllerDidCancel(UIVideoEditorController editor);
}
