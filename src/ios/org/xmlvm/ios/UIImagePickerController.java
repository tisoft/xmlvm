package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIImagePickerController extends UINavigationController {

	/*
	 * Static methods
	 */

	/**
	 * + (BOOL)isSourceTypeAvailable:(UIImagePickerControllerSourceType)sourceType;
	 */
	public static boolean isSourceTypeAvailable(int sourceType){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)availableMediaTypesForSourceType:(UIImagePickerControllerSourceType)sourceType;
	 */
	public static List availableMediaTypesForSourceType(int sourceType){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)isCameraDeviceAvailable:(UIImagePickerControllerCameraDevice)cameraDevice ;
	 */
	public static boolean isCameraDeviceAvailable(int cameraDevice){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)isFlashAvailableForCameraDevice:(UIImagePickerControllerCameraDevice)cameraDevice ;
	 */
	public static boolean isFlashAvailableForCameraDevice(int cameraDevice){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)availableCaptureModesForCameraDevice:(UIImagePickerControllerCameraDevice)cameraDevice ;
	 */
	public static List availableCaptureModesForCameraDevice(int cameraDevice){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	UIImagePickerController() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id <UINavigationControllerDelegate, UIImagePickerControllerDelegate> delegate;
	 */
	public UINavigationControllerDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id <UINavigationControllerDelegate, UIImagePickerControllerDelegate> delegate;
	 */
	public void setDelegate(UINavigationControllerDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIImagePickerControllerSourceType sourceType;
	 */
	public int getSourceType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIImagePickerControllerSourceType sourceType;
	 */
	public void setSourceType(int sourceType){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *mediaTypes;
	 */
	public List getMediaTypes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *mediaTypes;
	 */
	public void setMediaTypes(List mediaTypes){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsEditing ;
	 */
	public boolean getAllowsEditing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsEditing ;
	 */
	public void setAllowsEditing(boolean allowsEditing){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsImageEditing ;
	 */
	public boolean getAllowsImageEditing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsImageEditing ;
	 */
	public void setAllowsImageEditing(boolean allowsImageEditing){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval videoMaximumDuration ;
	 */
	public double getVideoMaximumDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSTimeInterval videoMaximumDuration ;
	 */
	public void setVideoMaximumDuration(double videoMaximumDuration){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIImagePickerControllerQualityType videoQuality ;
	 */
	public int getVideoQuality(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIImagePickerControllerQualityType videoQuality ;
	 */
	public void setVideoQuality(int videoQuality){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsCameraControls ;
	 */
	public boolean getShowsCameraControls(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsCameraControls ;
	 */
	public void setShowsCameraControls(boolean showsCameraControls){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *cameraOverlayView ;
	 */
	public UIView getCameraOverlayView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *cameraOverlayView ;
	 */
	public void setCameraOverlayView(UIView cameraOverlayView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGAffineTransform cameraViewTransform ;
	 */
	public CGAffineTransform getCameraViewTransform(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGAffineTransform cameraViewTransform ;
	 */
	public void setCameraViewTransform(CGAffineTransform cameraViewTransform){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIImagePickerControllerCameraCaptureMode cameraCaptureMode ;
	 */
	public int getCameraCaptureMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIImagePickerControllerCameraCaptureMode cameraCaptureMode ;
	 */
	public void setCameraCaptureMode(int cameraCaptureMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIImagePickerControllerCameraDevice cameraDevice ;
	 */
	public int getCameraDevice(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIImagePickerControllerCameraDevice cameraDevice ;
	 */
	public void setCameraDevice(int cameraDevice){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIImagePickerControllerCameraFlashMode cameraFlashMode ;
	 */
	public int getCameraFlashMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIImagePickerControllerCameraFlashMode cameraFlashMode ;
	 */
	public void setCameraFlashMode(int cameraFlashMode){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)takePicture ;
	 */
	public void takePicture(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)startVideoCapture ;
	 */
	public boolean startVideoCapture(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopVideoCapture ;
	 */
	public void stopVideoCapture(){
		throw new RuntimeException("Stub");
	}
}
