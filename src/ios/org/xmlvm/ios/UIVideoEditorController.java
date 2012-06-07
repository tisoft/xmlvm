package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIVideoEditorController extends UINavigationController {

	/*
	 * Static methods
	 */

	/**
	 * + (BOOL)canEditVideoAtPath:(NSString *)videoPath ;
	 */
	public static boolean canEditVideoAtPath(String videoPath){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */
	public UIVideoEditorController(UIViewController rootViewController) {
		super(rootViewController);
	}
	public UIVideoEditorController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/** Default constructor */
	public UIVideoEditorController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id <UINavigationControllerDelegate, UIVideoEditorControllerDelegate> delegate;
	 */
	public org.xmlvm.ios.UINavigationControllerDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id <UINavigationControllerDelegate, UIVideoEditorControllerDelegate> delegate;
	 */
	public void setDelegate(org.xmlvm.ios.UINavigationControllerDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *videoPath;
	 */
	public String getVideoPath(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *videoPath;
	 */
	public void setVideoPath(String videoPath){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval videoMaximumDuration;
	 */
	public double getVideoMaximumDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval videoMaximumDuration;
	 */
	public void setVideoMaximumDuration(double videoMaximumDuration){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIImagePickerControllerQualityType videoQuality;
	 */
	public int getVideoQuality(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIImagePickerControllerQualityType videoQuality;
	 */
	public void setVideoQuality(int videoQuality){
		throw new RuntimeException("Stub");
	}
}
