package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={NSError.class})
public class AVAudioPlayer extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithContentsOfURL:(NSURL *)url error:(NSError **)outError;
	 */
	public AVAudioPlayer(NSURL url, Reference<NSError> outError) {}

	/**
	 * - (id)initWithData:(NSData *)data error:(NSError **)outError;
	 */
	public AVAudioPlayer(NSData data, Reference<NSError> outError) {}

	/** Default constructor */
	public AVAudioPlayer() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly, getter=isPlaying) BOOL playing;
	 */
	public boolean isPlaying(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSUInteger numberOfChannels;
	 */
	public int getNumberOfChannels(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSTimeInterval duration;
	 */
	public double getDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign) id<AVAudioPlayerDelegate> delegate;
	 */
	public AVAudioPlayerDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign) id<AVAudioPlayerDelegate> delegate;
	 */
	public void setDelegate(AVAudioPlayerDelegate arg0){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSURL *url;
	 */
	public NSURL getUrl(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSData *data;
	 */
	public NSData getData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyfloat pan ;
	 */
	public float getPan(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyfloat pan ;
	 */
	public void setPan(float pan){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyfloat volume;
	 */
	public float getVolume(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyfloat volume;
	 */
	public void setVolume(float volume){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyNSTimeInterval currentTime;
	 */
	public double getCurrentTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyNSTimeInterval currentTime;
	 */
	public void setCurrentTime(double currentTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSTimeInterval deviceCurrentTime ;
	 */
	public double getDeviceCurrentTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyNSInteger numberOfLoops;
	 */
	public int getNumberOfLoops(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @propertyNSInteger numberOfLoops;
	 */
	public void setNumberOfLoops(int numberOfLoops){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSDictionary *settings ;
	 */
	public Map getSettings(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isMeteringEnabled) BOOL meteringEnabled;
	 */
	public boolean isMeteringEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(getter=isMeteringEnabled) BOOL meteringEnabled;
	 */
	public void setMeteringEnabled(boolean meteringEnabled){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)prepareToPlay;
	 */
	public boolean prepareToPlay(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)play;
	 */
	public boolean play(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)playAtTime:(NSTimeInterval)time ;
	 */
	public boolean playAtTime(double time){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)pause;
	 */
	public void pause(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stop;
	 */
	public void stop(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)updateMeters;
	 */
	public void updateMeters(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (float)peakPowerForChannel:(NSUInteger)channelNumber;
	 */
	public float peakPowerForChannel(int channelNumber){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (float)averagePowerForChannel:(NSUInteger)channelNumber;
	 */
	public float averagePowerForChannel(int channelNumber){
		throw new RuntimeException("Stub");
	}
}
