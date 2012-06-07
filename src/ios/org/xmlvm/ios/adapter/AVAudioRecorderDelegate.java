package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class AVAudioRecorderDelegate implements org.xmlvm.ios.AVAudioRecorderDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)audioRecorderDidFinishRecording:(AVAudioRecorder *)recorder successfully:(BOOL)flag;
	 */
	public void audioRecorderDidFinishRecording(AVAudioRecorder recorder, boolean flag){};
	/**
	 * - (void)audioRecorderEncodeErrorDidOccur:(AVAudioRecorder *)recorder error:(NSError *)error;
	 */
	public void audioRecorderEncodeErrorDidOccur(AVAudioRecorder recorder, NSError error){};
	/**
	 * - (void)audioRecorderBeginInterruption:(AVAudioRecorder *)recorder;
	 */
	public void audioRecorderBeginInterruption(AVAudioRecorder recorder){};
	/**
	 * - (void)audioRecorderEndInterruption:(AVAudioRecorder *)recorder withFlags:(NSUInteger)flags ;
	 */
	public void audioRecorderEndInterruptionWithFlags(AVAudioRecorder recorder, int flags){};
	/**
	 * - (void)audioRecorderEndInterruption:(AVAudioRecorder *)recorder;
	 */
	public void audioRecorderEndInterruption(AVAudioRecorder recorder){};}
