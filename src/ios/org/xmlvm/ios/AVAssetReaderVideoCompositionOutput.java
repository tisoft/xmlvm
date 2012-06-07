package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAssetReaderVideoCompositionOutput extends AVAssetReaderOutput {

	/*
	 * Static methods
	 */

	/**
	 * + (AVAssetReaderVideoCompositionOutput *)assetReaderVideoCompositionOutputWithVideoTracks:(NSArray *)videoTracks videoSettings:(NSDictionary *)videoSettings;
	 */
	public static AVAssetReaderVideoCompositionOutput assetReaderVideoCompositionOutputWithVideoTracks(List videoTracks, Map videoSettings){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithVideoTracks:(NSArray *)videoTracks videoSettings:(NSDictionary *)videoSettings;
	 */
	public AVAssetReaderVideoCompositionOutput(List videoTracks, Map videoSettings) {}

	/** Default constructor */
	public AVAssetReaderVideoCompositionOutput() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSArray *videoTracks;
	 */
	public List getVideoTracks(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSDictionary *videoSettings;
	 */
	public Map getVideoSettings(){
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
}
