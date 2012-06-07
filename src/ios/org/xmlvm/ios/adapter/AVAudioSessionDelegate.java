package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class AVAudioSessionDelegate implements org.xmlvm.ios.AVAudioSessionDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)beginInterruption;
	 */
	public void beginInterruption(){};
	/**
	 * - (void)endInterruptionWithFlags:(NSUInteger)flags ;
	 */
	public void endInterruptionWithFlags(int flags){};
	/**
	 * - (void)endInterruption;
	 */
	public void endInterruption(){};
	/**
	 * - (void)inputIsAvailableChanged:(BOOL)isInputAvailable;
	 */
	public void inputIsAvailableChanged(boolean isInputAvailable){};}
