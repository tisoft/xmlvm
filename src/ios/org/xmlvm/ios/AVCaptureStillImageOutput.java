package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCaptureStillImageOutput extends AVCaptureOutput {

	/*
	 * Static methods
	 */

	/**
	 * + (NSData *)jpegStillImageNSDataRepresentation:(CMSampleBufferRef)jpegSampleBuffer;
	 */
	public static NSData jpegStillImageNSDataRepresentation(CMSampleBuffer jpegSampleBuffer){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AVCaptureStillImageOutput() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, copy) NSDictionary *outputSettings;
	 */
	public Map getOutputSettings(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSDictionary *outputSettings;
	 */
	public void setOutputSettings(Map outputSettings){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *availableImageDataCVPixelFormatTypes;
	 */
	public List getAvailableImageDataCVPixelFormatTypes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *availableImageDataCodecTypes;
	 */
	public List getAvailableImageDataCodecTypes(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)captureStillImageAsynchronouslyFromConnection:(AVCaptureConnection *)connection completionHandler:(void (^)(CMSampleBufferRef imageDataSampleBuffer, NSError *error))handler;
	 */
	public void captureStillImageAsynchronouslyFromConnection(AVCaptureConnection connection, Object handler){
		throw new RuntimeException("Stub");
	}
}
