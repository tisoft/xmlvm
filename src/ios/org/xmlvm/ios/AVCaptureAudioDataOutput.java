package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCaptureAudioDataOutput extends AVCaptureOutput {

	/*
	 * Constructors
	 */

	/** Default constructor */
	AVCaptureAudioDataOutput() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) id<AVCaptureAudioDataOutputSampleBufferDelegate> sampleBufferDelegate;
	 */
	public AVCaptureAudioDataOutputSampleBufferDelegate getSampleBufferDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) dispatch_queue_t sampleBufferCallbackQueue;
	 */
	public Object getSampleBufferCallbackQueue(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setSampleBufferDelegate:(id<AVCaptureAudioDataOutputSampleBufferDelegate>)sampleBufferDelegate queue:(dispatch_queue_t)sampleBufferCallbackQueue;
	 */
	public void setSampleBufferDelegate(AVCaptureAudioDataOutputSampleBufferDelegate sampleBufferDelegate, Object sampleBufferCallbackQueue){
		throw new RuntimeException("Stub");
	}
}
