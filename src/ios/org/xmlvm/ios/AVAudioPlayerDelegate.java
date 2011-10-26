package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface AVAudioPlayerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag;
	 */
	public abstract void audioPlayerDidFinishPlaying(AVAudioPlayer player, boolean flag);

	/**
	 * - (void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error;
	 */
	public abstract void audioPlayerDecodeErrorDidOccur(AVAudioPlayer player, NSError error);

	/**
	 * - (void)audioPlayerBeginInterruption:(AVAudioPlayer *)player;
	 */
	public abstract void audioPlayerBeginInterruption(AVAudioPlayer player);

	/**
	 * - (void)audioPlayerEndInterruption:(AVAudioPlayer *)player withFlags:(NSUInteger)flags ;
	 */
	public abstract void audioPlayerEndInterruptionWithFlags(AVAudioPlayer player, int flags);

	/**
	 * - (void)audioPlayerEndInterruption:(AVAudioPlayer *)player;
	 */
	public abstract void audioPlayerEndInterruption(AVAudioPlayer player);
}
