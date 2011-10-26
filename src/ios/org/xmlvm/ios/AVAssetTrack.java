package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAssetTrack extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	AVAssetTrack() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) AVAsset *asset;
	 */
	public AVAsset getAsset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CMPersistentTrackID trackID;
	 */
	public int getTrackID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *mediaType;
	 */
	public String getMediaType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *formatDescriptions;
	 */
	public List getFormatDescriptions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isEnabled) BOOL enabled;
	 */
	public boolean isEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isSelfContained) BOOL selfContained;
	 */
	public boolean isSelfContained(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) long long totalSampleDataLength;
	 */
	public long getTotalSampleDataLength(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CMTimeRange timeRange;
	 */
	public CMTimeRange getTimeRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CMTimeScale naturalTimeScale;
	 */
	public int getNaturalTimeScale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) float estimatedDataRate;
	 */
	public float getEstimatedDataRate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *languageCode;
	 */
	public String getLanguageCode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *extendedLanguageTag;
	 */
	public String getExtendedLanguageTag(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CGSize naturalSize;
	 */
	public CGSize getNaturalSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CGAffineTransform preferredTransform;
	 */
	public CGAffineTransform getPreferredTransform(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) float preferredVolume;
	 */
	public float getPreferredVolume(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) float nominalFrameRate;
	 */
	public float getNominalFrameRate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy, readonly) NSArray *segments;
	 */
	public List getSegments(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *commonMetadata;
	 */
	public List getCommonMetadata(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *availableMetadataFormats;
	 */
	public List getAvailableMetadataFormats(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)hasMediaCharacteristic:(NSString *)mediaCharacteristic;
	 */
	public boolean hasMediaCharacteristic(String mediaCharacteristic){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (AVAssetTrackSegment *)segmentForTrackTime:(CMTime)trackTime;
	 */
	public AVAssetTrackSegment segmentForTrackTime(CMTime trackTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CMTime)samplePresentationTimeForTrackTime:(CMTime)trackTime;
	 */
	public CMTime samplePresentationTimeForTrackTime(CMTime trackTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)metadataForFormat:(NSString *)format;
	 */
	public List metadataForFormat(String format){
		throw new RuntimeException("Stub");
	}
}
