package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "AVAudioRecorderDelegate")
public interface AVAudioRecorderDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)audioRecorderDidFinishRecording:(AVAudioRecorder *)recorder successfully:(BOOL)flag;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "audioRecorderDidFinishRecording", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVAudioRecorder"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "successfully")
	})
	public abstract void audioRecorderDidFinishRecording(AVAudioRecorder recorder, boolean flag);

	/**
	 * - (void)audioRecorderEncodeErrorDidOccur:(AVAudioRecorder *)recorder error:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "audioRecorderEncodeErrorDidOccur", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVAudioRecorder"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "error")
	})
	public abstract void audioRecorderEncodeErrorDidOccur(AVAudioRecorder recorder, NSError error);

	/**
	 * - (void)audioRecorderBeginInterruption:(AVAudioRecorder *)recorder;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "audioRecorderBeginInterruption", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVAudioRecorder")
	})
	public abstract void audioRecorderBeginInterruption(AVAudioRecorder recorder);

	/**
	 * - (void)audioRecorderEndInterruption:(AVAudioRecorder *)recorder withFlags:(NSUInteger)flags ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "audioRecorderEndInterruption", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVAudioRecorder"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "withFlags")
	})
	public abstract void audioRecorderEndInterruptionWithFlags(AVAudioRecorder recorder, int flags);

	/**
	 * - (void)audioRecorderEndInterruption:(AVAudioRecorder *)recorder;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "audioRecorderEndInterruption", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVAudioRecorder")
	})
	public abstract void audioRecorderEndInterruption(AVAudioRecorder recorder);
}
