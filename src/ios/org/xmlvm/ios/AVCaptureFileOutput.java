package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCaptureFileOutput extends AVCaptureOutput {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AVCaptureFileOutput() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSURL *outputFileURL;
	 */
	public NSURL getOutputFileURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isRecording) BOOL recording;
	 */
	public boolean isRecording(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CMTime recordedDuration;
	 */
	public CMTime getRecordedDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) int64_t recordedFileSize;
	 */
	public long getRecordedFileSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTime maxRecordedDuration;
	 */
	public CMTime getMaxRecordedDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTime maxRecordedDuration;
	 */
	public void setMaxRecordedDuration(CMTime maxRecordedDuration){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) int64_t maxRecordedFileSize;
	 */
	public long getMaxRecordedFileSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) int64_t maxRecordedFileSize;
	 */
	public void setMaxRecordedFileSize(long maxRecordedFileSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) int64_t minFreeDiskSpaceLimit;
	 */
	public long getMinFreeDiskSpaceLimit(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) int64_t minFreeDiskSpaceLimit;
	 */
	public void setMinFreeDiskSpaceLimit(long minFreeDiskSpaceLimit){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)startRecordingToOutputFileURL:(NSURL*)outputFileURL recordingDelegate:(id<AVCaptureFileOutputRecordingDelegate>)delegate;
	 */
	public void startRecordingToOutputFileURL(NSURL outputFileURL, org.xmlvm.ios.AVCaptureFileOutputRecordingDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopRecording;
	 */
	public void stopRecording(){
		throw new RuntimeException("Stub");
	}
}
