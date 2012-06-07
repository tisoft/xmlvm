package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAudioRecorder extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithURL:(NSURL *)url settings:(NSDictionary *)settings error:(NSError **)outError;
	 */
	public AVAudioRecorder(NSURL url, Map settings, Reference<NSError> outError) {}

	/** Default constructor */
	public AVAudioRecorder() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly, getter=isRecording) BOOL recording;
	 */
	public boolean isRecording(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSURL *url;
	 */
	public NSURL getUrl(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSDictionary *settings;
	 */
	public Map getSettings(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign) id<AVAudioRecorderDelegate> delegate;
	 */
	public org.xmlvm.ios.AVAudioRecorderDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign) id<AVAudioRecorderDelegate> delegate;
	 */
	public void setDelegate(org.xmlvm.ios.AVAudioRecorderDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSTimeInterval currentTime;
	 */
	public double getCurrentTime(){
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
	 * - (BOOL)prepareToRecord;
	 */
	public boolean prepareToRecord(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)record;
	 */
	public boolean record(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)recordForDuration: (NSTimeInterval) duration;
	 */
	public boolean recordForDuration(double duration){
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
	 * - (BOOL)deleteRecording;
	 */
	public boolean deleteRecording(){
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
