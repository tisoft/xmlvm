package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class MPMediaPickerControllerDelegate implements org.xmlvm.ios.MPMediaPickerControllerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)mediaPicker:(MPMediaPickerController *)mediaPicker didPickMediaItems:(MPMediaItemCollection *)mediaItemCollection;
	 */
	public void mediaPicker(MPMediaPickerController mediaPicker, MPMediaItemCollection mediaItemCollection){};
	/**
	 * - (void)mediaPickerDidCancel:(MPMediaPickerController *)mediaPicker;
	 */
	public void mediaPickerDidCancel(MPMediaPickerController mediaPicker){};}
