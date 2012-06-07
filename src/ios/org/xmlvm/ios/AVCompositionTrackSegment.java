package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCompositionTrackSegment extends AVAssetTrackSegment {

	/*
	 * Static methods
	 */

	/**
	 * + (AVCompositionTrackSegment *)compositionTrackSegmentWithURL:(NSURL *)URL trackID:(CMPersistentTrackID)trackID sourceTimeRange:(CMTimeRange)sourceTimeRange targetTimeRange:(CMTimeRange)targetTimeRange;
	 */
	public static AVCompositionTrackSegment compositionTrackSegmentWithURL(NSURL URL, int trackID, CMTimeRange sourceTimeRange, CMTimeRange targetTimeRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (AVCompositionTrackSegment *)compositionTrackSegmentWithTimeRange:(CMTimeRange)timeRange;
	 */
	public static AVCompositionTrackSegment compositionTrackSegmentWithTimeRange(CMTimeRange timeRange){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithURL:(NSURL *)URL trackID:(CMPersistentTrackID)trackID sourceTimeRange:(CMTimeRange)sourceTimeRange targetTimeRange:(CMTimeRange)targetTimeRange;
	 */
	public AVCompositionTrackSegment(NSURL URL, int trackID, CMTimeRange sourceTimeRange, CMTimeRange targetTimeRange) {}

	/**
	 * - (id)initWithTimeRange:(CMTimeRange)timeRange;
	 */
	public AVCompositionTrackSegment(CMTimeRange timeRange) {}

	/** Default constructor */
	public AVCompositionTrackSegment() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly, getter=isEmpty) BOOL empty;
	 */
	public boolean isEmpty(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSURL *sourceURL;
	 */
	public NSURL getSourceURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CMPersistentTrackID sourceTrackID;
	 */
	public int getSourceTrackID(){
		throw new RuntimeException("Stub");
	}
}
