package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVMutableAudioMixInputParameters extends AVAudioMixInputParameters {

	/*
	 * Static methods
	 */

	/**
	 * + (AVMutableAudioMixInputParameters *)audioMixInputParametersWithTrack:(AVAssetTrack *)track;
	 */
	public static AVMutableAudioMixInputParameters audioMixInputParametersWithTrack(AVAssetTrack track){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (AVMutableAudioMixInputParameters *)audioMixInputParameters;
	 */
	public static AVMutableAudioMixInputParameters audioMixInputParameters(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	AVMutableAudioMixInputParameters() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) CMPersistentTrackID trackID;
	 */
	public int getTrackID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMPersistentTrackID trackID;
	 */
	public void setTrackID(int trackID){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setVolumeRampFromStartVolume:(float)startVolume toEndVolume:(float)endVolume timeRange:(CMTimeRange)timeRange;
	 */
	public void setVolumeRampFromStartVolume(float startVolume, float endVolume, CMTimeRange timeRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setVolume:(float)volume atTime:(CMTime)time;
	 */
	public void setVolume(float volume, CMTime time){
		throw new RuntimeException("Stub");
	}
}
