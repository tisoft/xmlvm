package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIVideoEditorControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)videoEditorController:(UIVideoEditorController *)editor didSaveEditedVideoToPath:(NSString *)editedVideoPath;
	 */
	public abstract void didSaveEditedVideoToPath(UIVideoEditorController editor, String editedVideoPath);

	/**
	 * - (void)videoEditorController:(UIVideoEditorController *)editor didFailWithError:(NSError *)error;
	 */
	public abstract void didFailWithError(UIVideoEditorController editor, NSError error);

	/**
	 * - (void)videoEditorControllerDidCancel:(UIVideoEditorController *)editor;
	 */
	public abstract void videoEditorControllerDidCancel(UIVideoEditorController editor);
}
