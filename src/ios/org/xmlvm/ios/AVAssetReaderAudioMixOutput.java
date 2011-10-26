package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAssetReaderAudioMixOutput extends AVAssetReaderOutput {

	/*
	 * Static methods
	 */

	/**
	 * + (AVAssetReaderAudioMixOutput *)assetReaderAudioMixOutputWithAudioTracks:(NSArray *)audioTracks audioSettings:(NSDictionary *)audioSettings;
	 */
	public static AVAssetReaderAudioMixOutput assetReaderAudioMixOutputWithAudioTracks(List audioTracks, Map audioSettings){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithAudioTracks:(NSArray *)audioTracks audioSettings:(NSDictionary *)audioSettings;
	 */
	public AVAssetReaderAudioMixOutput(List audioTracks, Map audioSettings) {}

	/** Default constructor */
	AVAssetReaderAudioMixOutput() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSArray *audioTracks;
	 */
	public List getAudioTracks(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSDictionary *audioSettings;
	 */
	public Map getAudioSettings(){
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
}
