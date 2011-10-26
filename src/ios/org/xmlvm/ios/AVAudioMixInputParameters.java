package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAudioMixInputParameters extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	AVAudioMixInputParameters() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) CMPersistentTrackID trackID;
	 */
	public int getTrackID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)getVolumeRampForTime:(CMTime)time startVolume:(float *)startVolume endVolume:(float *)endVolume timeRange:(CMTimeRange *)timeRange;
	 */
	public boolean getVolumeRampForTime(CMTime time, float[] startVolume, float[] endVolume, Reference<CMTimeRange> timeRange){
		throw new RuntimeException("Stub");
	}
}
