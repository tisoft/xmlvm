package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVPlayer extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)playerWithURL:(NSURL *)URL;
	 */
	public static AVPlayer playerWithURL(NSURL URL){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)playerWithPlayerItem:(AVPlayerItem *)item;
	 */
	public static AVPlayer playerWithPlayerItem(AVPlayerItem item){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithURL:(NSURL *)URL;
	 */
	public AVPlayer(NSURL URL) {}

	/**
	 * - (id)initWithPlayerItem:(AVPlayerItem *)item;
	 */
	public AVPlayer(AVPlayerItem item) {}

	/** Default constructor */
	public AVPlayer() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) AVPlayerStatus status;
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
	 * @property(nonatomic, readonly) AVPlayerItem *currentItem;
	 */
	public AVPlayerItem getCurrentItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float rate;
	 */
	public float getRate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float rate;
	 */
	public void setRate(float rate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float volume ;
	 */
	public float getVolume(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float volume ;
	 */
	public void setVolume(float volume){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isMuted) BOOL muted ;
	 */
	public boolean isMuted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isMuted) BOOL muted ;
	 */
	public void setMuted(boolean muted){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVPlayerActionAtItemEnd actionAtItemEnd;
	 */
	public int getActionAtItemEnd(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) AVPlayerActionAtItemEnd actionAtItemEnd;
	 */
	public void setActionAtItemEnd(int actionAtItemEnd){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isClosedCaptionDisplayEnabled) BOOL closedCaptionDisplayEnabled;
	 */
	public boolean isClosedCaptionDisplayEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isClosedCaptionDisplayEnabled) BOOL closedCaptionDisplayEnabled;
	 */
	public void setClosedCaptionDisplayEnabled(boolean closedCaptionDisplayEnabled){
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
	 * - (void)play;
	 */
	public void play(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)pause;
	 */
	public void pause(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)replaceCurrentItemWithPlayerItem:(AVPlayerItem *)item;
	 */
	public void replaceCurrentItemWithPlayerItem(AVPlayerItem item){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)addPeriodicTimeObserverForInterval:(CMTime)interval queue:(dispatch_queue_t)queue usingBlock:(void (^)(CMTime time))block;
	 */
	public Object addPeriodicTimeObserverForInterval(CMTime interval, Object queue, Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (id)addBoundaryTimeObserverForTimes:(NSArray *)times queue:(dispatch_queue_t)queue usingBlock:(void (^)(void))block;
	 */
	public Object addBoundaryTimeObserverForTimes(List times, Object queue, Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeTimeObserver:(id)observer;
	 */
	public void removeTimeObserver(Object observer){
		throw new RuntimeException("Stub");
	}
}
