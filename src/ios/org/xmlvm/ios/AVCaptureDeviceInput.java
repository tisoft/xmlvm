package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCaptureDeviceInput extends AVCaptureInput {

	/*
	 * Static methods
	 */

	/**
	 * + (id)deviceInputWithDevice:(AVCaptureDevice *)device error:(NSError **)outError;
	 */
	public static Object deviceInputWithDevice(AVCaptureDevice device, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithDevice:(AVCaptureDevice *)device error:(NSError **)outError;
	 */
	public AVCaptureDeviceInput(AVCaptureDevice device, Reference<NSError> outError) {}

	/** Default constructor */
	public AVCaptureDeviceInput() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) AVCaptureDevice *device;
	 */
	public AVCaptureDevice getDevice(){
		throw new RuntimeException("Stub");
	}
}
