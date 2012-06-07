package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class AVAudioPlayerDelegate implements org.xmlvm.ios.AVAudioPlayerDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag;
	 */
	public void audioPlayerDidFinishPlaying(AVAudioPlayer player, boolean flag){};
	/**
	 * - (void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error;
	 */
	public void audioPlayerDecodeErrorDidOccur(AVAudioPlayer player, NSError error){};
	/**
	 * - (void)audioPlayerBeginInterruption:(AVAudioPlayer *)player;
	 */
	public void audioPlayerBeginInterruption(AVAudioPlayer player){};
	/**
	 * - (void)audioPlayerEndInterruption:(AVAudioPlayer *)player withFlags:(NSUInteger)flags ;
	 */
	public void audioPlayerEndInterruptionWithFlags(AVAudioPlayer player, int flags){};
	/**
	 * - (void)audioPlayerEndInterruption:(AVAudioPlayer *)player;
	 */
	public void audioPlayerEndInterruption(AVAudioPlayer player){};}
