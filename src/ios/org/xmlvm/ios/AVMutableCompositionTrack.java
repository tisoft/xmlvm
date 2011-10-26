package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVMutableCompositionTrack extends AVCompositionTrack {

	/*
	 * Constructors
	 */

	/** Default constructor */
	AVMutableCompositionTrack() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) CMTimeScale naturalTimeScale;
	 */
	public int getNaturalTimeScale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTimeScale naturalTimeScale;
	 */
	public void setNaturalTimeScale(int naturalTimeScale){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *languageCode;
	 */
	public String getLanguageCode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *languageCode;
	 */
	public void setLanguageCode(String languageCode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *extendedLanguageTag;
	 */
	public String getExtendedLanguageTag(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *extendedLanguageTag;
	 */
	public void setExtendedLanguageTag(String extendedLanguageTag){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGAffineTransform preferredTransform;
	 */
	public CGAffineTransform getPreferredTransform(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGAffineTransform preferredTransform;
	 */
	public void setPreferredTransform(CGAffineTransform preferredTransform){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float preferredVolume;
	 */
	public float getPreferredVolume(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float preferredVolume;
	 */
	public void setPreferredVolume(float preferredVolume){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSArray *segments;
	 */
	public List getSegments(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSArray *segments;
	 */
	public void setSegments(List segments){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)insertTimeRange:(CMTimeRange)timeRange ofTrack:(AVAssetTrack *)track atTime:(CMTime)startTime error:(NSError **)error;
	 */
	public boolean insertTimeRange(CMTimeRange timeRange, AVAssetTrack track, CMTime startTime, Reference<NSError> error){
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
	 * - (BOOL)validateTrackSegments:(NSArray *)trackSegments error:(NSError **)error;
	 */
	public boolean validateTrackSegments(List trackSegments, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}
}
