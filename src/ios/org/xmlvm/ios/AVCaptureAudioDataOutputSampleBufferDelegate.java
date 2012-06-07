package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "AVCaptureAudioDataOutputSampleBufferDelegate")
public interface AVCaptureAudioDataOutputSampleBufferDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "captureOutput", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVCaptureOutput"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "CMSampleBufferRef", isStruct = true, name = "didOutputSampleBuffer"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVCaptureConnection", name = "fromConnection")
	})
	public abstract void captureOutput(AVCaptureOutput captureOutput, CMSampleBuffer sampleBuffer, AVCaptureConnection connection);
}
