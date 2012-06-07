package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCaptureAudioDataOutput extends AVCaptureOutput {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AVCaptureAudioDataOutput() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) id<AVCaptureAudioDataOutputSampleBufferDelegate> sampleBufferDelegate;
	 */
	public org.xmlvm.ios.AVCaptureAudioDataOutputSampleBufferDelegate getSampleBufferDelegate(){
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
	public void setSampleBufferDelegate(org.xmlvm.ios.AVCaptureAudioDataOutputSampleBufferDelegate sampleBufferDelegate, Object sampleBufferCallbackQueue){
		throw new RuntimeException("Stub");
	}
}
