package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface AVCaptureFileOutputRecordingDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)captureOutput:(AVCaptureFileOutput *)captureOutput didStartRecordingToOutputFileAtURL:(NSURL *)fileURL fromConnections:(NSArray *)connections;
	 */
	public abstract void didStartRecordingToOutputFileAtURL(AVCaptureFileOutput captureOutput, NSURL fileURL, List connections);

	/**
	 * - (void)captureOutput:(AVCaptureFileOutput *)captureOutput didFinishRecordingToOutputFileAtURL:(NSURL *)outputFileURL fromConnections:(NSArray *)connections error:(NSError *)error;
	 */
	public abstract void didFinishRecordingToOutputFileAtURL(AVCaptureFileOutput captureOutput, NSURL outputFileURL, List connections, NSError error);
}
