package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIVideoEditorControllerDelegate implements org.xmlvm.ios.UIVideoEditorControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)videoEditorController:(UIVideoEditorController *)editor didSaveEditedVideoToPath:(NSString *)editedVideoPath;
	 */
	public void didSaveEditedVideoToPath(UIVideoEditorController editor, String editedVideoPath){};
	/**
	 * - (void)videoEditorController:(UIVideoEditorController *)editor didFailWithError:(NSError *)error;
	 */
	public void didFailWithError(UIVideoEditorController editor, NSError error){};
	/**
	 * - (void)videoEditorControllerDidCancel:(UIVideoEditorController *)editor;
	 */
	public void videoEditorControllerDidCancel(UIVideoEditorController editor){};}
