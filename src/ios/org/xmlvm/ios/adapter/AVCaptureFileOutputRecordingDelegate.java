package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class AVCaptureFileOutputRecordingDelegate implements org.xmlvm.ios.AVCaptureFileOutputRecordingDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)captureOutput:(AVCaptureFileOutput *)captureOutput didStartRecordingToOutputFileAtURL:(NSURL *)fileURL fromConnections:(NSArray *)connections;
	 */
	public void didStartRecordingToOutputFileAtURL(AVCaptureFileOutput captureOutput, NSURL fileURL, List connections){};
	/**
	 * - (void)captureOutput:(AVCaptureFileOutput *)captureOutput didFinishRecordingToOutputFileAtURL:(NSURL *)outputFileURL fromConnections:(NSArray *)connections error:(NSError *)error;
	 */
	public void didFinishRecordingToOutputFileAtURL(AVCaptureFileOutput captureOutput, NSURL outputFileURL, List connections, NSError error){};}
