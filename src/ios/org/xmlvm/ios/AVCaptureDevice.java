package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCaptureDevice extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSArray *)devices;
	 */
	public static List devices(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)devicesWithMediaType:(NSString *)mediaType;
	 */
	public static List devicesWithMediaType(String mediaType){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (AVCaptureDevice *)defaultDeviceWithMediaType:(NSString *)mediaType;
	 */
	public static AVCaptureDevice defaultDeviceWithMediaType(String mediaType){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (AVCaptureDevice *)deviceWithUniqueID:(NSString *)deviceUniqueID;
	 */
	public static AVCaptureDevice deviceWithUniqueID(String deviceUniqueID){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	AVCaptureDevice() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSString *uniqueID;
	 */
	public String getUniqueID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *modelID;
	 */
	public String getModelID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *localizedName;
	 */
	public String getLocalizedName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isConnected) BOOL connected;
	 */
	public boolean isConnected(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) AVCaptureDevicePosition position;
	 */
	public int getPosition(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) BOOL hasFlash;
	 */
	public boolean getHasFlash(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureFlashMode flashMode;
	 */
	public int getFlashMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureFlashMode flashMode;
	 */
	public void setFlashMode(int flashMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) BOOL hasTorch;
	 */
	public boolean getHasTorch(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureTorchMode torchMode;
	 */
	public int getTorchMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureTorchMode torchMode;
	 */
	public void setTorchMode(int torchMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureFocusMode focusMode;
	 */
	public int getFocusMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureFocusMode focusMode;
	 */
	public void setFocusMode(int focusMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isFocusPointOfInterestSupported) BOOL focusPointOfInterestSupported;
	 */
	public boolean isFocusPointOfInterestSupported(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGPoint focusPointOfInterest;
	 */
	public CGPoint getFocusPointOfInterest(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGPoint focusPointOfInterest;
	 */
	public void setFocusPointOfInterest(CGPoint focusPointOfInterest){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isAdjustingFocus) BOOL adjustingFocus;
	 */
	public boolean isAdjustingFocus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureExposureMode exposureMode;
	 */
	public int getExposureMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureExposureMode exposureMode;
	 */
	public void setExposureMode(int exposureMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isExposurePointOfInterestSupported) BOOL exposurePointOfInterestSupported;
	 */
	public boolean isExposurePointOfInterestSupported(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGPoint exposurePointOfInterest;
	 */
	public CGPoint getExposurePointOfInterest(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGPoint exposurePointOfInterest;
	 */
	public void setExposurePointOfInterest(CGPoint exposurePointOfInterest){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isAdjustingExposure) BOOL adjustingExposure;
	 */
	public boolean isAdjustingExposure(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureWhiteBalanceMode whiteBalanceMode;
	 */
	public int getWhiteBalanceMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureWhiteBalanceMode whiteBalanceMode;
	 */
	public void setWhiteBalanceMode(int whiteBalanceMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isAdjustingWhiteBalance) BOOL adjustingWhiteBalance;
	 */
	public boolean isAdjustingWhiteBalance(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)hasMediaType:(NSString *)mediaType;
	 */
	public boolean hasMediaType(String mediaType){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)lockForConfiguration:(NSError **)outError;
	 */
	public boolean lockForConfiguration(Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)unlockForConfiguration;
	 */
	public void unlockForConfiguration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)supportsAVCaptureSessionPreset:(NSString *)preset;
	 */
	public boolean supportsAVCaptureSessionPreset(String preset){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isFlashModeSupported:(AVCaptureFlashMode)flashMode;
	 */
	public boolean isFlashModeSupported(int flashMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isTorchModeSupported:(AVCaptureTorchMode)torchMode;
	 */
	public boolean isTorchModeSupported(int torchMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isFocusModeSupported:(AVCaptureFocusMode)focusMode;
	 */
	public boolean isFocusModeSupported(int focusMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isExposureModeSupported:(AVCaptureExposureMode)exposureMode;
	 */
	public boolean isExposureModeSupported(int exposureMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isWhiteBalanceModeSupported:(AVCaptureWhiteBalanceMode)whiteBalanceMode;
	 */
	public boolean isWhiteBalanceModeSupported(int whiteBalanceMode){
		throw new RuntimeException("Stub");
	}
}
