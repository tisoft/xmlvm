package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "AVAudioPlayerDelegate")
public interface AVAudioPlayerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "audioPlayerDidFinishPlaying", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVAudioPlayer"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "BOOL", isStruct = true, name = "successfully")
	})
	public abstract void audioPlayerDidFinishPlaying(AVAudioPlayer player, boolean flag);

	/**
	 * - (void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "audioPlayerDecodeErrorDidOccur", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVAudioPlayer"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "error")
	})
	public abstract void audioPlayerDecodeErrorDidOccur(AVAudioPlayer player, NSError error);

	/**
	 * - (void)audioPlayerBeginInterruption:(AVAudioPlayer *)player;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "audioPlayerBeginInterruption", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVAudioPlayer")
	})
	public abstract void audioPlayerBeginInterruption(AVAudioPlayer player);

	/**
	 * - (void)audioPlayerEndInterruption:(AVAudioPlayer *)player withFlags:(NSUInteger)flags ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "audioPlayerEndInterruption", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVAudioPlayer"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "withFlags")
	})
	public abstract void audioPlayerEndInterruptionWithFlags(AVAudioPlayer player, int flags);

	/**
	 * - (void)audioPlayerEndInterruption:(AVAudioPlayer *)player;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "audioPlayerEndInterruption", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "AVAudioPlayer")
	})
	public abstract void audioPlayerEndInterruption(AVAudioPlayer player);
}
