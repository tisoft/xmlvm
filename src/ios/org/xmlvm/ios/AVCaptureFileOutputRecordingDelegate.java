package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "AVCaptureFileOutputRecordingDelegate")
public interface AVCaptureFileOutputRecordingDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)captureOutput:(AVCaptureFileOutput *)captureOutput didStartRecordingToOutputFileAtURL:(NSURL *)fileURL fromConnections:(NSArray *)connections;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "captureOutput", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVCaptureFileOutput"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURL", name = "didStartRecordingToOutputFileAtURL"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "fromConnections")
	})
	public abstract void didStartRecordingToOutputFileAtURL(AVCaptureFileOutput captureOutput, NSURL fileURL, List connections);

	/**
	 * - (void)captureOutput:(AVCaptureFileOutput *)captureOutput didFinishRecordingToOutputFileAtURL:(NSURL *)outputFileURL fromConnections:(NSArray *)connections error:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "captureOutput", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVCaptureFileOutput"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSURL", name = "didFinishRecordingToOutputFileAtURL"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "fromConnections"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "error")
	})
	public abstract void didFinishRecordingToOutputFileAtURL(AVCaptureFileOutput captureOutput, NSURL outputFileURL, List connections, NSError error);
}
