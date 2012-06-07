package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAsset extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AVAsset() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) CMTime duration;
	 */
	public CMTime getDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) float preferredRate;
	 */
	public float getPreferredRate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) float preferredVolume;
	 */
	public float getPreferredVolume(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CGAffineTransform preferredTransform;
	 */
	public CGAffineTransform getPreferredTransform(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CGSize naturalSize;
	 */
	public CGSize getNaturalSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) BOOL providesPreciseDurationAndTiming;
	 */
	public boolean getProvidesPreciseDurationAndTiming(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *tracks;
	 */
	public List getTracks(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *lyrics;
	 */
	public String getLyrics(){
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

	/**
	 * @property(readonly) NSArray *availableChapterLocales ;
	 */
	public List getAvailableChapterLocales(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) BOOL hasProtectedContent ;
	 */
	public boolean getHasProtectedContent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isPlayable) BOOL playable ;
	 */
	public boolean isPlayable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isExportable) BOOL exportable ;
	 */
	public boolean isExportable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isReadable) BOOL readable ;
	 */
	public boolean isReadable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isComposable) BOOL composable ;
	 */
	public boolean isComposable(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)cancelLoading;
	 */
	public void cancelLoading(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (AVAssetTrack *)trackWithTrackID:(CMPersistentTrackID)trackID;
	 */
	public AVAssetTrack trackWithTrackID(int trackID){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)tracksWithMediaType:(NSString *)mediaType;
	 */
	public List tracksWithMediaType(String mediaType){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)tracksWithMediaCharacteristic:(NSString *)mediaCharacteristic;
	 */
	public List tracksWithMediaCharacteristic(String mediaCharacteristic){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)metadataForFormat:(NSString *)format;
	 */
	public List metadataForFormat(String format){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)chapterMetadataGroupsWithTitleLocale:(NSLocale *)locale containingItemsWithCommonKeys:(NSArray *)commonKeys ;
	 */
	public List chapterMetadataGroupsWithTitleLocale(NSLocale locale, List commonKeys){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CMPersistentTrackID)unusedTrackID;
	 */
	public int unusedTrackID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
