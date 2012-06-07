package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVMutableComposition extends AVComposition {

	/*
	 * Static methods
	 */

	/**
	 * + (AVMutableComposition *)composition;
	 */
	public static AVMutableComposition composition(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AVMutableComposition() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSArray *tracks;
	 */
	public List getTracks(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGSize naturalSize;
	 */
	public CGSize getNaturalSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGSize naturalSize;
	 */
	public void setNaturalSize(CGSize naturalSize){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)insertTimeRange:(CMTimeRange)timeRange ofAsset:(AVAsset *)asset atTime:(CMTime)startTime error:(NSError **)outError;
	 */
	public boolean insertTimeRange(CMTimeRange timeRange, AVAsset asset, CMTime startTime, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)insertEmptyTimeRange:(CMTimeRange)timeRange;
	 */
	public void insertEmptyTimeRange(CMTimeRange timeRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeTimeRange:(CMTimeRange)timeRange;
	 */
	public void removeTimeRange(CMTimeRange timeRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)scaleTimeRange:(CMTimeRange)timeRange toDuration:(CMTime)duration;
	 */
	public void scaleTimeRange(CMTimeRange timeRange, CMTime duration){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (AVMutableCompositionTrack *)addMutableTrackWithMediaType:(NSString *)mediaType preferredTrackID:(CMPersistentTrackID)preferredTrackID;
	 */
	public AVMutableCompositionTrack addMutableTrackWithMediaType(String mediaType, int preferredTrackID){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeTrack:(AVCompositionTrack *)track;
	 */
	public void removeTrack(AVCompositionTrack track){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (AVMutableCompositionTrack *)mutableTrackCompatibleWithTrack:(AVAssetTrack *)track;
	 */
	public AVMutableCompositionTrack mutableTrackCompatibleWithTrack(AVAssetTrack track){
		throw new RuntimeException("Stub");
	}
}
