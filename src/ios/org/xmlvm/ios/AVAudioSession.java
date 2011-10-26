package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAudioSession extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)sharedInstance;
	 */
	public static Object sharedInstance(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	AVAudioSession() {}

	/*
	 * Properties
	 */

	/**
	 * @property(assign) id<AVAudioSessionDelegate> delegate;
	 */
	public AVAudioSessionDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(assign) id<AVAudioSessionDelegate> delegate;
	 */
	public void setDelegate(AVAudioSessionDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSString* category;
	 */
	public String getCategory(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) double preferredHardwareSampleRate;
	 */
	public double getPreferredHardwareSampleRate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSTimeInterval preferredIOBufferDuration;
	 */
	public double getPreferredIOBufferDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) BOOL inputIsAvailable;
	 */
	public boolean getInputIsAvailable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) double currentHardwareSampleRate;
	 */
	public double getCurrentHardwareSampleRate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSInteger currentHardwareInputNumberOfChannels;
	 */
	public int getCurrentHardwareInputNumberOfChannels(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSInteger currentHardwareOutputNumberOfChannels;
	 */
	public int getCurrentHardwareOutputNumberOfChannels(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)setActive:(BOOL)beActive error:(NSError**)outError;
	 */
	public boolean setActive(boolean beActive, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)setActive:(BOOL)beActive withFlags:(NSInteger)flags error:(NSError**)outError ;
	 */
	public boolean setActive(boolean beActive, int flags, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)setCategory:(NSString*)theCategory error:(NSError**)outError;
	 */
	public boolean setCategory(String theCategory, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)setPreferredHardwareSampleRate:(double)sampleRate error:(NSError**)outError;
	 */
	public boolean setPreferredHardwareSampleRate(double sampleRate, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)setPreferredIOBufferDuration:(NSTimeInterval)duration error:(NSError**)outError;
	 */
	public boolean setPreferredIOBufferDuration(double duration, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}
}
