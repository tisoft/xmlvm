package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface MPMediaPlayback {

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) BOOL isPreparedToPlay;
	 */
	public abstract boolean getIsPreparedToPlay();

	/**
	 * @property(nonatomic) NSTimeInterval currentPlaybackTime;
	 */
	public abstract double getCurrentPlaybackTime();

	/**
	 * @property(nonatomic) NSTimeInterval currentPlaybackTime;
	 */
	public abstract void setCurrentPlaybackTime(double currentPlaybackTime);

	/**
	 * @property(nonatomic) float currentPlaybackRate;
	 */
	public abstract float getCurrentPlaybackRate();

	/**
	 * @property(nonatomic) float currentPlaybackRate;
	 */
	public abstract void setCurrentPlaybackRate(float currentPlaybackRate);

	/*
	 * Instance methods
	 */

	/**
	 * - (void)prepareToPlay;
	 */
	public abstract void prepareToPlay();

	/**
	 * - (void)play;
	 */
	public abstract void play();

	/**
	 * - (void)pause;
	 */
	public abstract void pause();

	/**
	 * - (void)stop;
	 */
	public abstract void stop();

	/**
	 * - (void)beginSeekingForward;
	 */
	public abstract void beginSeekingForward();

	/**
	 * - (void)beginSeekingBackward;
	 */
	public abstract void beginSeekingBackward();

	/**
	 * - (void)endSeeking;
	 */
	public abstract void endSeeking();
}
