package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "MPMediaPlayback")
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
	@org.xmlvm.XMLVMDelegateMethod(selector = "prepareToPlay", params = {
	})
	public abstract void prepareToPlay();

	/**
	 * - (void)play;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "play", params = {
	})
	public abstract void play();

	/**
	 * - (void)pause;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "pause", params = {
	})
	public abstract void pause();

	/**
	 * - (void)stop;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "stop", params = {
	})
	public abstract void stop();

	/**
	 * - (void)beginSeekingForward;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "beginSeekingForward", params = {
	})
	public abstract void beginSeekingForward();

	/**
	 * - (void)beginSeekingBackward;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "beginSeekingBackward", params = {
	})
	public abstract void beginSeekingBackward();

	/**
	 * - (void)endSeeking;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "endSeeking", params = {
	})
	public abstract void endSeeking();
}
