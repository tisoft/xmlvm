package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCaptureVideoDataOutput extends AVCaptureOutput {

	/*
	 * Constructors
	 */

	/** Default constructor */
	AVCaptureVideoDataOutput() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) id<AVCaptureVideoDataOutputSampleBufferDelegate> sampleBufferDelegate;
	 */
	public AVCaptureVideoDataOutputSampleBufferDelegate getSampleBufferDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) dispatch_queue_t sampleBufferCallbackQueue;
	 */
	public Object getSampleBufferCallbackQueue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSDictionary *videoSettings;
	 */
	public Map getVideoSettings(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSDictionary *videoSettings;
	 */
	public void setVideoSettings(Map videoSettings){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTime minFrameDuration;
	 */
	public CMTime getMinFrameDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTime minFrameDuration;
	 */
	public void setMinFrameDuration(CMTime minFrameDuration){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL alwaysDiscardsLateVideoFrames;
	 */
	public boolean getAlwaysDiscardsLateVideoFrames(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL alwaysDiscardsLateVideoFrames;
	 */
	public void setAlwaysDiscardsLateVideoFrames(boolean alwaysDiscardsLateVideoFrames){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setSampleBufferDelegate:(id<AVCaptureVideoDataOutputSampleBufferDelegate>)sampleBufferDelegate queue:(dispatch_queue_t)sampleBufferCallbackQueue;
	 */
	public void setSampleBufferDelegate(AVCaptureVideoDataOutputSampleBufferDelegate sampleBufferDelegate, Object sampleBufferCallbackQueue){
		throw new RuntimeException("Stub");
	}
}
