package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIDocumentInteractionController extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (UIDocumentInteractionController *)interactionControllerWithURL:(NSURL *)url;
	 */
	public static UIDocumentInteractionController interactionControllerWithURL(NSURL url){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public UIDocumentInteractionController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<UIDocumentInteractionControllerDelegate> delegate;
	 */
	public org.xmlvm.ios.UIDocumentInteractionControllerDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UIDocumentInteractionControllerDelegate> delegate;
	 */
	public void setDelegate(org.xmlvm.ios.UIDocumentInteractionControllerDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain) NSURL *URL;
	 */
	public NSURL getURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(retain) NSURL *URL;
	 */
	public void setURL(NSURL URL){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *UTI;
	 */
	public String getUTI(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *UTI;
	 */
	public void setUTI(String UTI){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy) NSString *name;
	 */
	public String getName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy) NSString *name;
	 */
	public void setName(String name){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSArray *icons;
	 */
	public List getIcons(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) id annotation;
	 */
	public Object getAnnotation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) id annotation;
	 */
	public void setAnnotation(Object annotation){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSArray *gestureRecognizers;
	 */
	public List getGestureRecognizers(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)presentOptionsMenuFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated;
	 */
	public boolean presentOptionsMenuFromRect(CGRect rect, UIView view, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)presentOptionsMenuFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated;
	 */
	public boolean presentOptionsMenuFromBarButtonItem(UIBarButtonItem item, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)presentPreviewAnimated:(BOOL)animated;
	 */
	public boolean presentPreviewAnimated(boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)presentOpenInMenuFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated;
	 */
	public boolean presentOpenInMenuFromRect(CGRect rect, UIView view, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)presentOpenInMenuFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated;
	 */
	public boolean presentOpenInMenuFromBarButtonItem(UIBarButtonItem item, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)dismissPreviewAnimated:(BOOL)animated;
	 */
	public void dismissPreviewAnimated(boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)dismissMenuAnimated:(BOOL)animated;
	 */
	public void dismissMenuAnimated(boolean animated){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
