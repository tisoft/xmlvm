package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIImagePickerControllerDelegate implements org.xmlvm.ios.UIImagePickerControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo ;
	 */
	public void didFinishPickingImage(UIImagePickerController picker, UIImage image, Map editingInfo){};
	/**
	 * - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info;
	 */
	public void didFinishPickingMediaWithInfo(UIImagePickerController picker, Map info){};
	/**
	 * - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker;
	 */
	public void imagePickerControllerDidCancel(UIImagePickerController picker){};}
