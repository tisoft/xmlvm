package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVURLAsset extends AVAsset {

	/*
	 * Static methods
	 */

	/**
	 * + (AVURLAsset *)URLAssetWithURL:(NSURL *)URL options:(NSDictionary *)options;
	 */
	public static AVURLAsset URLAssetWithURL(NSURL URL, Map options){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithURL:(NSURL *)URL options:(NSDictionary *)options;
	 */
	public AVURLAsset(NSURL URL, Map options) {}

	/** Default constructor */
	AVURLAsset() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly, copy) NSURL *URL;
	 */
	public NSURL getURL(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (AVAssetTrack *)compatibleTrackForCompositionTrack:(AVCompositionTrack *)compositionTrack;
	 */
	public AVAssetTrack compatibleTrackForCompositionTrack(AVCompositionTrack compositionTrack){
		throw new RuntimeException("Stub");
	}
}
