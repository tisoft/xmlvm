package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class QLPreviewController extends UIViewController {

	/*
	 * Static methods
	 */

	/**
	 * + (BOOL)canPreviewItem:(id <QLPreviewItem>)item;
	 */
	public static boolean canPreviewItem(org.xmlvm.ios.QLPreviewItem item){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */
	public QLPreviewController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/** Default constructor */
	public QLPreviewController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(assign) id <QLPreviewControllerDataSource> dataSource;
	 */
	public org.xmlvm.ios.QLPreviewControllerDataSource getDataSource(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign) id <QLPreviewControllerDataSource> dataSource;
	 */
	public void setDataSource(org.xmlvm.ios.QLPreviewControllerDataSource dataSource){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyNSInteger currentPreviewItemIndex;
	 */
	public int getCurrentPreviewItemIndex(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyNSInteger currentPreviewItemIndex;
	 */
	public void setCurrentPreviewItemIndex(int currentPreviewItemIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) id <QLPreviewItem> currentPreviewItem;
	 */
	public org.xmlvm.ios.QLPreviewItem getCurrentPreviewItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign) id delegate;
	 */
	public Object getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign) id delegate;
	 */
	public void setDelegate(Object delegate){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)reloadData;
	 */
	public void reloadData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)refreshCurrentPreviewItem;
	 */
	public void refreshCurrentPreviewItem(){
		throw new RuntimeException("Stub");
	}
}
