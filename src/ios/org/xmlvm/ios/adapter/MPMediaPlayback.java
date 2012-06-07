package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class MPMediaPlayback implements org.xmlvm.ios.MPMediaPlayback {

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) BOOL isPreparedToPlay;
	 */
	public boolean getIsPreparedToPlay(){
		return false;
	}
	/**
	 * @property(nonatomic) NSTimeInterval currentPlaybackTime;
	 */
	public double getCurrentPlaybackTime(){
		return 0;
	}
	/**
	 * @property(nonatomic) NSTimeInterval currentPlaybackTime;
	 */
	public void setCurrentPlaybackTime(double currentPlaybackTime){};
	/**
	 * @property(nonatomic) float currentPlaybackRate;
	 */
	public float getCurrentPlaybackRate(){
		return 0;
	}
	/**
	 * @property(nonatomic) float currentPlaybackRate;
	 */
	public void setCurrentPlaybackRate(float currentPlaybackRate){};
	/*
	 * Instance methods
	 */

	/**
	 * - (void)prepareToPlay;
	 */
	public void prepareToPlay(){};
	/**
	 * - (void)play;
	 */
	public void play(){};
	/**
	 * - (void)pause;
	 */
	public void pause(){};
	/**
	 * - (void)stop;
	 */
	public void stop(){};
	/**
	 * - (void)beginSeekingForward;
	 */
	public void beginSeekingForward(){};
	/**
	 * - (void)beginSeekingBackward;
	 */
	public void beginSeekingBackward(){};
	/**
	 * - (void)endSeeking;
	 */
	public void endSeeking(){};}
