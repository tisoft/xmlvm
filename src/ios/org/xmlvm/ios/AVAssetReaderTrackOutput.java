package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAssetReaderTrackOutput extends AVAssetReaderOutput {

	/*
	 * Static methods
	 */

	/**
	 * + (AVAssetReaderTrackOutput *)assetReaderTrackOutputWithTrack:(AVAssetTrack *)track outputSettings:(NSDictionary *)outputSettings;
	 */
	public static AVAssetReaderTrackOutput assetReaderTrackOutputWithTrack(AVAssetTrack track, Map outputSettings){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithTrack:(AVAssetTrack *)track outputSettings:(NSDictionary *)outputSettings;
	 */
	public AVAssetReaderTrackOutput(AVAssetTrack track, Map outputSettings) {}

	/** Default constructor */
	AVAssetReaderTrackOutput() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) AVAssetTrack *track;
	 */
	public AVAssetTrack getTrack(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSDictionary *outputSettings;
	 */
	public Map getOutputSettings(){
		throw new RuntimeException("Stub");
	}
}
