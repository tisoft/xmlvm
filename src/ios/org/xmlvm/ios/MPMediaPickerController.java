package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MPMediaPickerController extends UIViewController {

	/*
	 * Constructors
	 */

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
	public MPMediaPickerControllerDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<MPMediaPickerControllerDelegate> delegate;
	 */
	public void setDelegate(MPMediaPickerControllerDelegate delegate){
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
