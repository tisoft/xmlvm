package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface AVAudioRecorderDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)audioRecorderDidFinishRecording:(AVAudioRecorder *)recorder successfully:(BOOL)flag;
	 */
	public abstract void audioRecorderDidFinishRecording(AVAudioRecorder recorder, boolean flag);

	/**
	 * - (void)audioRecorderEncodeErrorDidOccur:(AVAudioRecorder *)recorder error:(NSError *)error;
	 */
	public abstract void audioRecorderEncodeErrorDidOccur(AVAudioRecorder recorder, NSError error);

	/**
	 * - (void)audioRecorderBeginInterruption:(AVAudioRecorder *)recorder;
	 */
	public abstract void audioRecorderBeginInterruption(AVAudioRecorder recorder);

	/**
	 * - (void)audioRecorderEndInterruption:(AVAudioRecorder *)recorder withFlags:(NSUInteger)flags ;
	 */
	public abstract void audioRecorderEndInterruptionWithFlags(AVAudioRecorder recorder, int flags);

	/**
	 * - (void)audioRecorderEndInterruption:(AVAudioRecorder *)recorder;
	 */
	public abstract void audioRecorderEndInterruption(AVAudioRecorder recorder);
}
