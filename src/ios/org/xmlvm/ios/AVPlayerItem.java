package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVPlayerItem extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (AVPlayerItem *)playerItemWithURL:(NSURL *)URL;
	 */
	public static AVPlayerItem playerItemWithURL(NSURL URL){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (AVPlayerItem *)playerItemWithAsset:(AVAsset *)asset;
	 */
	public static AVPlayerItem playerItemWithAsset(AVAsset asset){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithURL:(NSURL *)URL;
	 */
	public AVPlayerItem(NSURL URL) {}

	/**
	 * - (id)initWithAsset:(AVAsset *)asset;
	 */
	public AVPlayerItem(AVAsset asset) {}

	/** Default constructor */
	AVPlayerItem() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) AVPlayerItemStatus status;
	 */
	public int getStatus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSError *error;
	 */
	public NSError getError(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) AVAsset *asset;
	 */
	public AVAsset getAsset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *tracks;
	 */
	public List getTracks(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CMTime duration ;
	 */
	public CMTime getDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CGSize presentationSize;
	 */
	public CGSize getPresentationSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTime forwardPlaybackEndTime;
	 */
	public CMTime getForwardPlaybackEndTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTime forwardPlaybackEndTime;
	 */
	public void setForwardPlaybackEndTime(CMTime forwardPlaybackEndTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTime reversePlaybackEndTime;
	 */
	public CMTime getReversePlaybackEndTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTime reversePlaybackEndTime;
	 */
	public void setReversePlaybackEndTime(CMTime reversePlaybackEndTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) AVAudioMix *audioMix;
	 */
	public AVAudioMix getAudioMix(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) AVAudioMix *audioMix;
	 */
	public void setAudioMix(AVAudioMix audioMix){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) AVVideoComposition *videoComposition;
	 */
	public AVVideoComposition getVideoComposition(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) AVVideoComposition *videoComposition;
	 */
	public void setVideoComposition(AVVideoComposition videoComposition){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isPlaybackLikelyToKeepUp) BOOL playbackLikelyToKeepUp;
	 */
	public boolean isPlaybackLikelyToKeepUp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isPlaybackBufferFull) BOOL playbackBufferFull;
	 */
	public boolean isPlaybackBufferFull(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isPlaybackBufferEmpty) BOOL playbackBufferEmpty;
	 */
	public boolean isPlaybackBufferEmpty(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *seekableTimeRanges;
	 */
	public List getSeekableTimeRanges(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *loadedTimeRanges;
	 */
	public List getLoadedTimeRanges(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *timedMetadata;
	 */
	public List getTimedMetadata(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (CMTime)currentTime;
	 */
	public CMTime currentTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)seekToTime:(CMTime)time;
	 */
	public void seekToTime(CMTime time){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)seekToTime:(CMTime)time toleranceBefore:(CMTime)toleranceBefore toleranceAfter:(CMTime)toleranceAfter;
	 */
	public void seekToTime(CMTime time, CMTime toleranceBefore, CMTime toleranceAfter){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stepByCount:(NSInteger)stepCount;
	 */
	public void stepByCount(int stepCount){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDate*)currentDate;
	 */
	public NSDate currentDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)seekToDate:(NSDate *)date;
	 */
	public boolean seekToDate(NSDate date){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (AVPlayerItemAccessLog *)accessLog ;
	 */
	public AVPlayerItemAccessLog accessLog(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (AVPlayerItemErrorLog *)errorLog ;
	 */
	public AVPlayerItemErrorLog errorLog(){
		throw new RuntimeException("Stub");
	}
}
