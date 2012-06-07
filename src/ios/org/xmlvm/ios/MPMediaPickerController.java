package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MPMediaPickerController extends UIViewController {

	/*
	 * Constructors
	 */
	public MPMediaPickerController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/**
	 * - (id)init;
	 */
	public MPMediaPickerController() {}

	/**
	 * - (id)initWithMediaTypes:(MPMediaType)mediaTypes;
	 */
	public MPMediaPickerController(int mediaTypes) {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) MPMediaType mediaTypes;
	 */
	public int getMediaTypes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<MPMediaPickerControllerDelegate> delegate;
	 */
	public org.xmlvm.ios.MPMediaPickerControllerDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<MPMediaPickerControllerDelegate> delegate;
	 */
	public void setDelegate(org.xmlvm.ios.MPMediaPickerControllerDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsPickingMultipleItems;
	 */
	public boolean getAllowsPickingMultipleItems(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsPickingMultipleItems;
	 */
	public void setAllowsPickingMultipleItems(boolean allowsPickingMultipleItems){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *prompt;
	 */
	public String getPrompt(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *prompt;
	 */
	public void setPrompt(String prompt){
		throw new RuntimeException("Stub");
	}
}
