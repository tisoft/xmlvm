package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCaptureConnection extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AVCaptureConnection() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSArray *inputPorts;
	 */
	public List getInputPorts(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) AVCaptureOutput *output;
	 */
	public AVCaptureOutput getOutput(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isEnabled) BOOL enabled;
	 */
	public boolean isEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isEnabled) BOOL enabled;
	 */
	public void setEnabled(boolean enabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isActive) BOOL active;
	 */
	public boolean isActive(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *audioChannels;
	 */
	public List getAudioChannels(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isVideoMirroringSupported) BOOL supportsVideoMirroring;
	 */
	public boolean isVideoMirroringSupported(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isVideoMirrored) BOOL videoMirrored;
	 */
	public boolean isVideoMirrored(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isVideoMirrored) BOOL videoMirrored;
	 */
	public void setVideoMirrored(boolean videoMirrored){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isVideoOrientationSupported) BOOL supportsVideoOrientation;
	 */
	public boolean isVideoOrientationSupported(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureVideoOrientation videoOrientation;
	 */
	public int getVideoOrientation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVCaptureVideoOrientation videoOrientation;
	 */
	public void setVideoOrientation(int videoOrientation){
		throw new RuntimeException("Stub");
	}
}
